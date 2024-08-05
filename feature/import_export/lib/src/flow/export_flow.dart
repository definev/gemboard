import 'dart:convert';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:import_export/src/provider/compress_whiteboard_to_file.dart';
import 'package:import_export/src/view/import_export_view.dart';
import 'package:whiteboard/whiteboard.dart';

part 'export_flow.freezed.dart';

@freezed
sealed class ExportFlowState with _$ExportFlowState {
  const factory ExportFlowState.initial() = _Initial;
}

class ExportFlow extends ConsumerWidget {
  const ExportFlow({
    super.key,
    required this.whiteboardId,
  });

  final WhiteboardId whiteboardId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ExportView(
      onCopy: () async {
        final data = await ref.read(
          compressWhiteboardToJsonProvider(
            whiteboardId: whiteboardId,
          ).future,
        );
        Clipboard.setData(ClipboardData(text: jsonEncode(data)));
        if (context.mounted) {
          DSToast.success(
            context: context,
            title: 'Copied to clipboard',
          );
        }
      },
      onExport: (directory, fileName) async {
        if (ref.exists(compressWhiteboardToFileProvider(
          whiteboardId: whiteboardId,
          path: directory,
          fileName: fileName,
        ))) return;

        await ref.read(
          compressWhiteboardToFileProvider(
            whiteboardId: whiteboardId,
            path: directory,
            fileName: fileName,
          ),
        );
        if (context.mounted) {
          DSToast.success(
            context: context,
            title: 'Exported successfully',
          );
          Navigator.of(context).pop();
        }
      },
    );
  }
}
