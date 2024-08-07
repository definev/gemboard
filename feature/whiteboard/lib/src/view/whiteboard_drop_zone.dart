import 'dart:convert';
import 'dart:io' as io;

import 'package:cell/cell.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:super_clipboard/super_clipboard.dart';
import 'package:super_drag_and_drop/super_drag_and_drop.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';

final imageFormats = [
  Formats.jpeg,
  Formats.png,
  Formats.gif,
  Formats.tiff,
  Formats.webp,
  Formats.heif,
  Formats.heic,
  // Formats.svg,
];

SimpleFileFormat? canProvideSupportedImageFormat(DataReader reader) {
  return imageFormats.firstWhereOrNull(
    (format) => reader.canProvide(format),
  );
}

class WhiteboardDropZone extends StatelessWidget {
  const WhiteboardDropZone({
    super.key,
    required this.id,
    required this.child,
    required this.horizontalDetails,
    required this.verticalDetails,
    required this.scaleFactor,

    /// Cell
    required this.onCellCreated,
    required this.onImageReceived,
    required this.onTextReceived,
    required this.onLinkReceived,
  });

  final WhiteboardId id;

  final double scaleFactor;
  final ScrollableDetails horizontalDetails;
  final ScrollableDetails verticalDetails;

  final void Function(Cell cell) onCellCreated;
  final void Function(Offset offset, Uri uri) onImageReceived;
  final void Function(Offset offset, String value) onTextReceived;
  final void Function(Offset offset, Uri uri, {required bool moveToNewCell})
      onLinkReceived;

  final Widget child;

  Offset _offsetToViewport(Offset offset) {
    final topLeft = Offset(
      horizontalDetails.controller!.offset,
      verticalDetails.controller!.offset,
    );
    return (topLeft + offset) / scaleFactor;
  }

  bool handleLocalData(Object? localData, Offset position) {
    if (localData case Map<String, dynamic>()) {
      if (localData['type'] == 'markdown') {
        /// Handle link
        final element = localData['element'];
        switch (element['tag']) {
          case 'a':
            onLinkReceived(
              position,
              Uri.parse(element['href']),
              moveToNewCell: false,
            );
            return true;
          default:
            return false;
        }
      }

      try {
        var cell = Cell.fromJson(localData);
        cell = cell.copyWith(
          offset: _offsetToViewport(position - cell.offset),
        );

        onCellCreated(cell);
      } catch (e) {
        debugPrint('Error reading cell $e');
      }
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return DropRegion(
      // Formats this region can accept.
      formats: Formats.standardFormats,
      hitTestBehavior: HitTestBehavior.opaque,
      onDropOver: (event) {
        // You can inspect local data here, as well as formats of each item.
        // However on certain platforms (mobile / web) the actual data is
        // only available when the drop is accepted (onPerformDrop).
        // This drop region only supports copy operation.
        if (event.session.allowedOperations.contains(DropOperation.copy)) {
          return DropOperation.copy;
        } else {
          return DropOperation.none;
        }
      },
      onPerformDrop: (event) async {
        // Called when user dropped the item. You can now request the data.
        // Note that data must be requested before the performDrop callback
        // is over.
        for (final item in event.session.items) {
          // data reader is available now
          bool handled = handleLocalData(item.localData, event.position.local);
          if (handled) continue;

          final reader = item.dataReader!;
          final matchedFormat = canProvideSupportedImageFormat(reader);
          if (matchedFormat case final matchedFormat?) {
            reader.getFile(
              matchedFormat,
              (value) async {
                final directory = await getApplicationDocumentsDirectory();
                var file = io.File(
                    '${directory.path}/whiteboard/${id.id}/${UniqueKey()}_${value.fileName}');
                file = await file.create(recursive: true);
                final ioSink = file.openWrite();
                try {
                  final stream = value.getStream();
                  await ioSink.addStream(stream);
                  onImageReceived(event.position.local, file.uri);
                } catch (e) {
                } finally {
                  await ioSink.flush();
                  await ioSink.close();
                }
              },
              onError: (_) {
                Uri? uri;
                if (reader.canProvide(Formats.uri)) {
                  reader.getValue<NamedUri>(
                    Formats.uri,
                    (value) async {
                      if (value != null) {
                        uri = value.uri;
                        // You can access values through the `value` property.
                        debugPrint(
                            'Dropped image: ${value.name} | ${value.uri}');
                        final validImage = await NetworkUtils.validateImage(
                            value.uri.toString());

                        if (validImage) {
                          onImageReceived(event.position.local, value.uri);
                        } else {
                          onLinkReceived(
                            event.position.local,
                            value.uri,
                            moveToNewCell: true,
                          );
                        }
                      }
                    },
                    onError: (error) {
                      debugPrint('Error reading value $error');
                      if (uri case final uri?) {
                        onLinkReceived(
                          event.position.local,
                          uri,
                          moveToNewCell: true,
                        );
                      }
                    },
                  );
                }
              },
            );
          } else if (reader.canProvide(Formats.uri)) {
            reader.getValue<NamedUri>(
              Formats.uri,
              (value) async {
                if (value != null) {
                  // You can access values through the `value` property.
                  debugPrint('Dropped image: ${value.name} | ${value.uri}');
                  final validImage =
                      await NetworkUtils.validateImage(value.uri.toString());

                  if (validImage) {
                    onImageReceived(event.position.local, value.uri);
                  } else {
                    onLinkReceived(
                      event.position.local,
                      value.uri,
                      moveToNewCell: true,
                    );
                  }
                } else {
                  reader.getValue<String>(Formats.plainText, (value) {
                    if (value != null) {
                      // You can access values through the `value` property.
                      debugPrint('Dropped text: $value');
                      final uri = Uri.tryParse(value);
                      if (uri != null && uri.scheme.isNotEmpty) {
                        onLinkReceived(
                          event.position.local,
                          uri,
                          moveToNewCell: true,
                        );
                      } else {
                        onTextReceived(event.position.local, value);
                      }
                    }
                  }, onError: (error) {
                    debugPrint('Error reading value $error');
                  });
                }
              },
              onError: (error) {
                debugPrint('Error reading value $error');
              },
            );
          } else if (reader.canProvide(Formats.plainText)) {
            reader.getValue<String>(Formats.plainText, (value) {
              if (value != null) {
                // You can access values through the `value` property.
                debugPrint('Dropped text: $value');
                final uri = Uri.tryParse(value);
                if (uri != null && uri.scheme.isNotEmpty) {
                  onLinkReceived(
                    event.position.local,
                    uri,
                    moveToNewCell: true,
                  );
                } else {
                  onTextReceived(event.position.local, value);
                }
              }
            }, onError: (error) {
              debugPrint('Error reading value $error');
            });
          } else if (reader.canProvide(Formats.plainTextFile)) {
            reader.getFile(
              Formats.plainTextFile,
              (reader) async {
                final value = utf8.decode(await reader.readAll());
                debugPrint('Dropped text: $value');
                final uri = Uri.tryParse(value);
                if (uri != null && uri.scheme.isNotEmpty) {
                  onLinkReceived(
                    event.position.local,
                    uri,
                    moveToNewCell: true,
                  );
                } else {
                  onTextReceived(event.position.local, value);
                }
              },
            );
          }
        }
      },
      child: child,
    );
  }
}
