import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconly/iconly.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mix/mix.dart';

class EditableCellView extends HookWidget {
  const EditableCellView({
    super.key,
    required this.cell,
    required this.onConstraintChanged,
    required this.onContentChanged,
  });

  final EditableCell cell;

  final VoidCallback onConstraintChanged;
  final void Function(String title, String content) onContentChanged;

  @override
  Widget build(BuildContext context) {
    final scale = DesignSystemTheme.of(context).scale;

    final cellDecoration = CellDecorationExtension(cell.decoration);

    final titleController = useTextEditingController(text: cell.title);
    final titleFocusNode = useFocusNode();

    final contentController = useTextEditingController(text: cell.content);
    final contentFocusNode = useFocusNode();
    useEffect(() {
      if (cell.content.isEmpty) {
        contentFocusNode.requestFocus();
      }
      return null;
    }, []);

    final kind = cell.decoration.cardKind.kindVarant;

    final background = cellDecoration.colorVariant ?? ColorVariant.surface;
    final onBackground = cellDecoration.onColorValue(context);

    final onEdit = useState(cell.content.isEmpty);

    Widget child = DSCard(
      kind: kind,
      background: background,
      child: DSCardSection(
        kind: kind,
        background: background,
        header: HBox(
          style: Style(
            $flex.gap.ref(SpaceVariant.gap),
          ),
          children: [
            Expanded(
              child: DSTextbox(
                style: Style(
                  $box.color.transparent(),
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
                        color: cellDecoration.onColorValue(context).withValues(alpha:
                            OpacityVariant.surface.resolve(context).value)),
                textStyle: TextStyleVariant.p
                    .resolve(context)
                    .copyWith(color: cellDecoration.onColorValue(context)),
              ),
            ),
            Button(
              kind: ButtonKind.filled,
              background: background,
              onPressed: () => onEdit.value = !onEdit.value,
              child: StyledIcon(
                onEdit.value
                    ? IconlyLight.tick_square
                    : IconlyLight.edit_square,
              ),
            ),
            Button(
              background: background,
              onPressed: onConstraintChanged,
              child: StyledIcon(
                switch (cell.decoration.constraints) {
                  false => LineIcons.caretUp,
                  true => LineIcons.caretDown,
                },
              ),
            ),
          ],
        ),
        content: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: switch (cell.decoration.constraints) {
              true => 300 * scale,
              false => double.infinity,
            },
          ),
          child: Builder(
            builder: (context) {
              final textSpec = TextSpec.of(context);
              final child = switch (onEdit.value) {
                true => DSTextbox(
                    controller: contentController,
                    focusNode: contentFocusNode,
                    hintText: 'Type something',
                    autofocus: cell.content.isEmpty,
                    kind: DSTextboxKind.boundless,
                    minLines: 1,
                    onChanged: (content) =>
                        onContentChanged(titleController.text, content),
                    hintTextStyle: TextStyleVariant.p.resolve(context).copyWith(
                        color: (textSpec.style?.color ?? onBackground)
                            .withValues(alpha:
                                OpacityVariant.surface.resolve(context).value)),
                    textStyle: TextStyleVariant.p
                        .resolve(context)
                        .copyWith(color: textSpec.style?.color ?? onBackground),
                    style: Style(
                      $box.color(Colors.transparent),
                      $box.padding.all(0),
                    ),
                  ),
                false => SelectionArea(
                    child: SingleChildScrollView(
                      child: DSMarkdownBody(
                        data: cell.content,
                      ),
                    ),
                  ),
              };
              if (cell.decoration.constraints) {
                return IntrinsicHeight(child: child);
              }
              return child;
            },
          ),
        ),
      ),
    );

    child = SizedBox(
      height: cell.height,
      width: cell.width,
      child: child,
    );

    return child;
  }
}
