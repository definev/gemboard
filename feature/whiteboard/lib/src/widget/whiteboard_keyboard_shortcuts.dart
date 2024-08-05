import 'dart:io' as io;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:path_provider/path_provider.dart';
import 'package:super_clipboard/super_clipboard.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';
import 'package:whiteboard/src/view/whiteboard_drop_zone.dart';

class DeleteSelectedCellIntent extends Intent {}

class SelectAllCellIntent extends Intent {}

class DeselectAllCellIntent extends Intent {}

class SelectSelectionToolIntent extends Intent {}

class SelectHandToolIntent extends Intent {}

class PasteClipboardIntent extends Intent {}

class BrainstormingCellIntent extends Intent {}

class NoteCellIntent extends Intent {}

class ChatCellIntent extends Intent {}

class WhiteboardKeyboardShortcuts extends HookWidget {
  const WhiteboardKeyboardShortcuts({
    super.key,
    required this.id,
    required this.onImageReceived,
    required this.onTextReceived,
    required this.onLinkReceived,
    required this.onBrainstormingTriggered,
    required this.onNoteTriggered,

    /// Actions
    required this.onDeleteSelectedCell,
    required this.onSelectAllCell,
    required this.onDeselectAllCell,
    required this.onHandToolSelected,
    required this.onSelectionToolSelected,
    required this.onChatTriggered,
    required this.child,
  });

  final WhiteboardId id;

  final void Function(Offset position, Uri uri) onImageReceived;
  final void Function(Offset position, String value) onTextReceived;
  final void Function(Offset position, Uri uri) onLinkReceived;
  final VoidCallback onHandToolSelected;
  final VoidCallback onSelectionToolSelected;
  final VoidCallback onSelectAllCell;
  final VoidCallback onDeselectAllCell;
  final VoidCallback onDeleteSelectedCell;

  final VoidCallback onBrainstormingTriggered;
  final VoidCallback onNoteTriggered;
  final VoidCallback onChatTriggered;

  final Widget child;

  static String selectionToolShortcut = 'Cmd + K';
  static String handToolShortcut = 'Cmd + L';
  static String brainstormingShortcut = 'Cmd + Shift + B';
  static String noteShortcut = 'Cmd + Shift + N';
  static String chatShortcut = 'Cmd + Shift + C';

  static final macosShortcuts = {
    SingleActivator(LogicalKeyboardKey.keyK, meta: true):
        SelectSelectionToolIntent(),
    SingleActivator(LogicalKeyboardKey.keyL, meta: true):
        SelectHandToolIntent(),
    SingleActivator(LogicalKeyboardKey.keyV, meta: true):
        PasteClipboardIntent(),
    SingleActivator(LogicalKeyboardKey.keyB, meta: true, shift: true):
        BrainstormingCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyN, meta: true, shift: true):
        NoteCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyC, meta: true, shift: true):
        ChatCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyA, meta: true): SelectAllCellIntent(),
    SingleActivator(LogicalKeyboardKey.escape): DeselectAllCellIntent(),
    SingleActivator(LogicalKeyboardKey.backspace): DeleteSelectedCellIntent(),
  };

  static final windowsShortcuts = {
    SingleActivator(LogicalKeyboardKey.keyK, control: true):
        SelectSelectionToolIntent(),
    SingleActivator(LogicalKeyboardKey.keyL, control: true):
        SelectHandToolIntent(),
    SingleActivator(LogicalKeyboardKey.keyV, control: true):
        PasteClipboardIntent(),
    SingleActivator(LogicalKeyboardKey.keyB, control: true, shift: true):
        BrainstormingCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyN, control: true, shift: true):
        NoteCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyC, control: true, shift: true):
        ChatCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyA, control: true):
        SelectAllCellIntent(),
    SingleActivator(LogicalKeyboardKey.escape): DeselectAllCellIntent(),
    SingleActivator(LogicalKeyboardKey.backspace): DeleteSelectedCellIntent(),
  };
  static final linuxShortcuts = {
    SingleActivator(LogicalKeyboardKey.keyK, control: true):
        SelectSelectionToolIntent(),
    SingleActivator(LogicalKeyboardKey.keyL, control: true):
        SelectHandToolIntent(),
    SingleActivator(LogicalKeyboardKey.keyV, control: true):
        PasteClipboardIntent(),
    SingleActivator(LogicalKeyboardKey.keyB, control: true, shift: true):
        BrainstormingCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyN, control: true, shift: true):
        NoteCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyC, control: true, shift: true):
        ChatCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyA, control: true):
        SelectAllCellIntent(),
    SingleActivator(LogicalKeyboardKey.escape): DeselectAllCellIntent(),
    SingleActivator(LogicalKeyboardKey.backspace): DeleteSelectedCellIntent(),
  };
  static final androidShortcuts = {
    SingleActivator(LogicalKeyboardKey.keyK, control: true):
        SelectSelectionToolIntent(),
    SingleActivator(LogicalKeyboardKey.keyL, control: true):
        SelectHandToolIntent(),
    SingleActivator(LogicalKeyboardKey.keyV, control: true):
        PasteClipboardIntent(),
    SingleActivator(LogicalKeyboardKey.keyB, control: true, shift: true):
        BrainstormingCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyN, control: true, shift: true):
        NoteCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyC, control: true, shift: true):
        ChatCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyA, control: true):
        SelectAllCellIntent(),
    SingleActivator(LogicalKeyboardKey.escape): DeselectAllCellIntent(),
    SingleActivator(LogicalKeyboardKey.backspace): DeleteSelectedCellIntent(),
  };
  static final iosShortcuts = {
    SingleActivator(LogicalKeyboardKey.keyK, meta: true):
        SelectSelectionToolIntent(),
    SingleActivator(LogicalKeyboardKey.keyL, meta: true):
        SelectHandToolIntent(),
    SingleActivator(LogicalKeyboardKey.keyV, meta: true):
        PasteClipboardIntent(),
    SingleActivator(LogicalKeyboardKey.keyB, meta: true, shift: true):
        BrainstormingCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyN, meta: true, shift: true):
        NoteCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyC, meta: true, shift: true):
        ChatCellIntent(),
    SingleActivator(LogicalKeyboardKey.keyA, meta: true): SelectAllCellIntent(),
    SingleActivator(LogicalKeyboardKey.escape): DeselectAllCellIntent(),
    SingleActivator(LogicalKeyboardKey.backspace): DeleteSelectedCellIntent(),
  };

  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();

    WidgetsApp.defaultShortcuts;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Shortcuts(
          shortcuts: switch (defaultTargetPlatform) {
            TargetPlatform.android => androidShortcuts,
            TargetPlatform.fuchsia => linuxShortcuts,
            TargetPlatform.iOS => iosShortcuts,
            TargetPlatform.linux => linuxShortcuts,
            TargetPlatform.macOS => macosShortcuts,
            TargetPlatform.windows => windowsShortcuts,
          },
          child: Actions(
            actions: {
              DeleteSelectedCellIntent:
                  CallbackAction<DeleteSelectedCellIntent>(
                onInvoke: (intent) {
                  debugPrint('DeleteSelectedCellIntent | onInvoke');
                  onDeleteSelectedCell();
                  return null;
                },
              ),
              SelectAllCellIntent: CallbackAction<SelectAllCellIntent>(
                onInvoke: (intent) {
                  debugPrint('SelectAllCellIntent | onInvoke');
                  onSelectAllCell();
                  return null;
                },
              ),
              DeselectAllCellIntent: CallbackAction<DeselectAllCellIntent>(
                onInvoke: (intent) {
                  debugPrint('DeselectAllCellIntent | onInvoke');
                  onDeselectAllCell();
                  return null;
                },
              ),
              SelectSelectionToolIntent:
                  CallbackAction<SelectSelectionToolIntent>(
                onInvoke: (intent) {
                  debugPrint('SelectSelectionToolIntent | onInvoke');
                  onSelectionToolSelected();
                  return null;
                },
              ),
              SelectHandToolIntent: CallbackAction<SelectHandToolIntent>(
                onInvoke: (intent) {
                  debugPrint('SelectHandToolIntent | onInvoke');
                  onHandToolSelected();
                  return null;
                },
              ),
              PasteClipboardIntent: CallbackAction<PasteClipboardIntent>(
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
              BrainstormingCellIntent: CallbackAction<BrainstormingCellIntent>(
                onInvoke: (intent) {
                  debugPrint('BrainstormingCellIntent | onInvoke');
                  onBrainstormingTriggered();
                  return null;
                },
              ),
              NoteCellIntent: CallbackAction<NoteCellIntent>(
                onInvoke: (intent) {
                  debugPrint('NoteCellIntent | onInvoke');
                  onNoteTriggered();
                  return null;
                },
              ),
              ChatCellIntent: CallbackAction<ChatCellIntent>(
                onInvoke: (intent) {
                  debugPrint('ChatCellIntent | onInvoke');
                  onChatTriggered();
                  return null;
                },
              ),
            },
            child: Focus(
              focusNode: focusNode,
              autofocus: true,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).requestFocus(focusNode),
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}
