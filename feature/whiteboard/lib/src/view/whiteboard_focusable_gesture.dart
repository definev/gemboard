import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:path_provider/path_provider.dart';
import 'package:super_clipboard/super_clipboard.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';
import 'package:whiteboard/src/view/whiteboard_drop_zone.dart';

class WhiteboardFocusableGesture extends HookWidget {
  const WhiteboardFocusableGesture({
    super.key,
    required this.id,
    required this.onImageReceived,
    required this.onTextReceived,
    required this.onLinkReceived,
    required this.child,
  });

  final WhiteboardId id;

  final void Function(Offset position, Uri uri) onImageReceived;
  final void Function(Offset position, String value) onTextReceived;
  final void Function(Offset position, Uri uri) onLinkReceived;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();

    return LayoutBuilder(
      builder: (context, constraints) => FocusableActionDetector(
        focusNode: focusNode,
        autofocus: true,
        shortcuts: {
          SingleActivator(LogicalKeyboardKey.keyV, control: true):
              PasteTextIntent(SelectionChangedCause.keyboard),
        },
        actions: {
          PasteTextIntent: CallbackAction<PasteTextIntent>(
            onInvoke: (intent) async {
              final clipboard = SystemClipboard.instance;

              // Clipboard API is not supported on this platform.
              if (clipboard == null) return;

              final reader = await clipboard.read();

              if (reader.canProvide(Formats.plainText)) {
                final text = await reader.readValue(Formats.plainText);
                if (text == null) return;
                final uri = Uri.tryParse(text);
                if (uri?.data case final uriData?) {
                  final isImage = uriData.isMimeType('image/*');
                  if (isImage) {
                    onImageReceived(
                      constraints.biggest.center(Offset.zero),
                      uri!,
                    );
                  }
                  return;
                }
                if (uri case final uri?
                    when uri.isScheme('HTTP') || uri.isScheme('HTTPS')) {
                  onLinkReceived(
                    constraints.biggest.center(Offset.zero),
                    uri,
                  );
                  return;
                } else {
                  onTextReceived(
                    constraints.biggest.center(Offset.zero),
                    text,
                  );
                }
              }

              final matchedFormat = canProvideSupportedImageFormat(reader);
              if (matchedFormat case final matchedFormat?) {
                /// Binary formats need to be read as streams
                if (reader.canProvide(matchedFormat)) {
                  reader.getFile(
                    matchedFormat,
                    (value) async {
                      final directory =
                          await getApplicationDocumentsDirectory();
                      var file = io.File(
                          '${directory.path}/whiteboard/${id.id}/${value.fileName}');
                      file = await file.create(recursive: true);
                      final ioSink = file.openWrite();
                      try {
                        final stream = value.getStream();
                        await ioSink.addStream(stream);
                        onImageReceived(
                          constraints.biggest.center(Offset.zero),
                          file.uri,
                        );
                      } catch (e) {
                      } finally {
                        await ioSink.flush();
                        await ioSink.close();
                      }
                    },
                  );
                }
              }

              return null;
            },
          ),
        },
        child: Builder(
          builder: (context) => Listener(
            onPointerDown: (event) {
              debugPrint('FocusableActionDetector | onPointerDown');
              FocusScope.of(context).requestFocus(focusNode);
            },
            child: child,
          ),
        ),
      ),
    );
  }
}
