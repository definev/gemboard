import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';

class HeaderCellView extends HookWidget {
  const HeaderCellView({
    super.key,
    required this.cell,
  });

  final HeaderCell cell;

  @override
  Widget build(BuildContext context) {
    final scale = DesignSystemTheme.of(context).scale;
    final titleController = useTextEditingController(text: cell.title);

    return Row(
      children: [
        SizedBox.square(
          dimension: 30 * scale,
          child: StyledIcon(
            IconlyLight.arrow_right_square,
            style: Style(
              $icon.size(24 * scale),
            ),
          ),
        ),
        Expanded(
          child: DSTextbox(
            controller: titleController,
            hintText: 'Type your label',
            textStyle: TextStyleVariant.h3.resolve(context),
            hintTextStyle: TextStyleVariant.h3.resolve(context).copyWith(
              color: ColorVariant.outline.resolve(context).withOpacity(0.5),
            ),
            style: Style(
              $text.style.ref(TextStyleVariant.h3),
              $text.style.fontWeight.w700(),
              $box.color.transparent(),
              $box.border.none(),
            ),
          ),
        ),
      ],
    );
  }
}
