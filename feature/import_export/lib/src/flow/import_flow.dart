import 'dart:convert';

import 'package:design_system/design_system.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:folder/folder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:import_export/src/provider/decompress_whiteboard_data.dart';
import 'package:import_export/src/provider/save_whiteboard_data.dart';
import 'package:mix/mix.dart';

class ImportFlow extends HookConsumerWidget {
  const ImportFlow({
    super.key,
    required this.folderId,
  });

  final FolderId? folderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jsonTextController = useTextEditingController();

    VoidCallback onImport(String raw) {
      return () async {
        try {
          final json = jsonDecode(raw);
          final data = await ref.read(
            decompressWhiteboardDataProvider(data: json).future,
          );
          await ref.read(
            saveWhiteboardDataProvider(
              data: data,
              folderId: folderId,
            ).future,
          );
          DSToast.success(
            context: context,
            title: 'Imported successfully',
          );
        } catch (e) {
          DSToast.error(
            context: context,
            title: 'Failed to parse gemboard JSON',
          );
          rethrow;
        }
      };
    }

    return Center(
      child: Material(
        color: ColorVariant.background.resolve(context),
        child: SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DSAppbar(
                leading: DSBackButton(),
                title: StyledText('Import'),
              ),
              PaddedColumn(
                padding: EdgeInsets.all(SpaceVariant.small.resolve(context)),
                children: [
                  DSTextbox(
                    hintText: 'Enter the gemboard JSON',
                    maxLines: 10,
                  ),
                  SizedBox(height: SpaceVariant.medium.resolve(context)),
                  Row(
                    children: [
                      Expanded(
                        child: Button(
                          style: Style(
                            $box.alignment.center(),
                            $box.height(40),
                          ),
                          kind: ButtonKind.filled,
                          onPressed: () async {
                            final result = await FilePicker.platform.pickFiles(
                              allowMultiple: false,
                              type: FileType.custom,
                              allowedExtensions: ['json', 'txt', 'gemboard'],
                              withData: true,
                            );
                            if (result == null) return;
                            for (final file in result.files) {
                              onImport(utf8.decode(file.bytes!))();
                            }
                          },
                          child: StyledText('Import from file'),
                        ),
                      ),
                      Expanded(
                        child: Button(
                          style: Style(
                            $box.alignment.center(),
                            $box.height(40),
                          ),
                          kind: ButtonKind.outline,
                          onPressed: () {
                            onImport(jsonTextController.text)();
                            Navigator.pop(context);
                          },
                          child: StyledText('Save'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
