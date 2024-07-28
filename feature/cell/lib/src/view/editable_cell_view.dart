import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mix/mix.dart';

class EditableCellView extends HookWidget {
  const EditableCellView({
    super.key,
    required this.cell,
    required this.onContentChanged,
  });

  final EditableCell cell;

  final void Function(String title, String content) onContentChanged;

  @override
  Widget build(BuildContext context) {
    final cellDecoration = CellDecorationExtension(cell.decoration);

    final titleController = useTextEditingController(text: cell.title);
    final titleFocusNode = useFocusNode();

    final contentController = useTextEditingController(text: cell.content);
    final contentFocusNode = useFocusNode();

    final kind = cell.decoration.cardKind.kindVarant;

    final background = cellDecoration.colorVariant ?? ColorVariant.surface;
    final onBackground = cellDecoration.onColorValue(context);

    Widget child = DSCard(
      kind: kind,
      background: background,
      child: DSCardSection(
        kind: kind,
        background: background,
        header: HBox(
          children: [
            DSTextbox(
              style: Style(
                $box.color.transparent(),
                $with.expanded(),
                $box.padding.all(0),
              ),
              controller: titleController,
              focusNode: titleFocusNode,
              hintText: 'Untitled',
              kind: DSTextboxKind.boundless,
              onChanged: (title) =>
                  onContentChanged(title, contentController.text),
              hintTextStyle: TextStyleVariant.p //
                  .resolve(context)
                  .copyWith(
                      color: cellDecoration.onColorValue(context).withOpacity(
                          OpacityVariant.surface.resolve(context).value)),
              textStyle: TextStyleVariant.p
                  .resolve(context)
                  .copyWith(color: cellDecoration.onColorValue(context)),
            ),
            Button(
              background: background,
              onPressed: () {},
              child: StyledIcon(
                switch (cell.decoration.constraints) {
                  false => LineIcons.caretUp,
                  true => LineIcons.caretDown,
                },
              ),
            ),
          ],
        ),
        content: Builder(
          builder: (context) {
            final textSpec = TextSpec.of(context);
            return DSTextbox(
              controller: contentController,
              focusNode: contentFocusNode,
              hintText: 'Type something',
              kind: DSTextboxKind.boundless,
              minLines: 1,
              onChanged: (content) =>
                  onContentChanged(titleController.text, content),
              hintTextStyle: TextStyleVariant.p2.resolve(context).copyWith(
                  color: (textSpec.style?.color ?? onBackground).withOpacity(
                      OpacityVariant.surface.resolve(context).value)),
              textStyle: TextStyleVariant.p2
                  .resolve(context)
                  .copyWith(color: textSpec.style?.color ?? onBackground),
              style: Style(
                $box.color(Colors.transparent),
                $box.padding.all(0),
              ),
            );
          },
        ),
      ),
    );

    if (cell.height != null) {
      child = SizedBox(
        height: cell.height,
        width: cell.width,
        child: child,
      );
    } else {
      child = IntrinsicHeight(
        child: SizedBox(
          width: cell.width,
          child: child,
        ),
      );
    }

    return child;
  }
}
