import 'package:design_system/design_system.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mix/mix.dart';

class ExportView extends HookWidget {
  const ExportView({
    super.key,
    required this.onExport,
    required this.onCopy,
  });

  final void Function(String directory, String fileName) onExport;
  final VoidCallback onCopy;

  @override
  Widget build(BuildContext context) {
    final fileNameController = useTextEditingController();

    return Center(
      child: Material(
        color: ColorVariant.background.resolve(context),
        child: SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DSAppbar(
                leading: DSBackButton(
                  onPressed: () => Navigator.of(context).pop(),
                ),
                title: Text('Export gemboard'),
              ),
              VBox(
                style: Style(
                  $box.padding.all.ref(SpaceVariant.small),
                  $flex.gap.ref(SpaceVariant.small),
                  $flex.mainAxisSize.min(),
                ),
                children: [
                  DSTextbox(
                    controller: fileNameController,
                    hintText: 'Enter the name of the file',
                  ),
                  Row(
                    children: [
                      if (!(kIsWasm || kIsWeb))
                        Expanded(
                          child: Button(
                            style: Style(
                              $box.alignment.center(),
                              $box.height(40),
                            ),
                            kind: ButtonKind.filled,
                            onPressed: () async {
                              String? selectedDirectory =
                                  await FilePicker.platform.getDirectoryPath();
                              if (selectedDirectory == null) return;
                              onExport(
                                  selectedDirectory, fileNameController.text);
                            },
                            child: StyledText('Save'),
                          ),
                        ),
                      Expanded(
                        child: Button(
                          style: Style(
                            $box.alignment.center(),
                            $box.height(40),
                          ),
                          kind: ButtonKind.outline,
                          onPressed: onCopy,
                          child: StyledText('Copy to clipboard'),
                        ),
                      ),
                    ],
                  ),
                  if (kIsWasm || kIsWeb)
                    StyledText(
                      'Exporting to file is not supported on the web',
                      style: Style(
                        $text.style.color.ref(ColorVariant.red),
                      ),
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
