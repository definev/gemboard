import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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

    final titleController = useTextEditingController();
    final titleFocusNode = useFocusNode();

    final contentController = useTextEditingController();
    final contentFocusNode = useFocusNode();

    Widget child = DSCard(
      background: cellDecoration.colorVariant ?? ColorVariant.surface,
      kind: DSCardKind.outlined,
      style: Style(
        $box.padding.all.ref(SpaceVariant.medium),
      ),
      child: Column(
        children: [
          DSTextbox(
            controller: titleController,
            focusNode: titleFocusNode,
            hintText: 'Untitled',
            kind: DSTextboxKind.boundless,
            onChanged: (title) =>
                onContentChanged(title, contentController.text),
            hintTextStyle: TextStyleVariant.h6.resolve(context).copyWith(
                color: cellDecoration.onColorValue(context).withOpacity(
                    OpacityVariant.surface.resolve(context).value)),
            textStyle: TextStyleVariant.h6
                .resolve(context)
                .copyWith(color: cellDecoration.onColorValue(context)),
            style: Style(
              $box.color(
                  CellDecorationExtension(cell.decoration).colorValue(context)),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: DSTextbox(
                controller: contentController,
                focusNode: contentFocusNode,
                hintText: 'Type something',
                kind: DSTextboxKind.boundless,
                minLines: 1,
                maxLines: 20,
                onChanged: (content) =>
                    onContentChanged(titleController.text, content),
                hintTextStyle: TextStyleVariant.p.resolve(context).copyWith(
                    color: cellDecoration.onColorValue(context).withOpacity(
                        OpacityVariant.surface.resolve(context).value)),
                textStyle: TextStyleVariant.p2
                    .resolve(context)
                    .copyWith(color: cellDecoration.onColorValue(context)),
                style: Style(
                  $box.margin.top.ref(SpaceVariant.medium),
                  $box.margin.bottom(0),
                  $box.padding.all(0),
                  $box.color(Colors.transparent),
                ),
              ),
            ),
          ),
        ],
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
