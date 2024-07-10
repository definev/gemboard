import 'dart:ui';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:mix/mix.dart';

class GenitEmojiLabelEditor extends HookWidget {
  const GenitEmojiLabelEditor({
    super.key,
    required this.emoji,
    required this.label,
    required this.onEmojiSelected,
    required this.onLabelChanged,
    this.onSubmitted,
    this.autofocus = false,
    this.labelStyle,
  });

  static const emojiPickerWidth = 290.0;

  final String emoji;
  final String label;
  final ValueChanged<String> onEmojiSelected;
  final ValueChanged<String> onLabelChanged;
  final VoidCallback? onSubmitted;
  final bool autofocus;

  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    final textSelectionTheme = Theme.of(context).textSelectionTheme;

    final controller = useTextEditingController(text: label);
    final focusNode = useFocusNode();

    final openEmojiPicker = useState(false);
    useListenable(controller);

    final labelStyle = this.labelStyle ??
        TextStyleVariant.h6.resolve(context).copyWith(
              color: ColorVariant.onSurface.resolve(context),
            );

    return LayoutBuilder(
      builder: (context, constraints) {
        final size = constraints.biggest;
        return StyledRow(
          inherit: true,
          style: Style(
            $flex.gap.ref(SpaceVariant.gap),
          ),
          children: [
            PortalTarget(
              visible: openEmojiPicker.value,
              anchor: const Aligned(
                target: Alignment.bottomLeft,
                follower: Alignment.topLeft,
              ),
              portalFollower: Padding(
                padding: EdgeInsets.only(
                  top: SpaceVariant.gap.resolve(context) +
                      SpaceVariant.gap.resolve(context),
                ),
                child: SizedBox(
                  width: size.width,
                  child: Align(
                    heightFactor: 1.0,
                    alignment: Alignment.centerLeft,
                    child: Box(
                      style: Style(
                        $box.height(284),
                        $box.width(emojiPickerWidth),
                      ),
                      child: DSEmojiPicker(
                        onSelected: (emoji) {
                          openEmojiPicker.value = false;
                          onEmojiSelected(emoji);
                        },
                      ),
                    ),
                  ),
                ),
              ),
              child: SizedBox.square(
                dimension: 32,
                child: Center(
                  child: GestureDetector(
                    onTap: () => openEmojiPicker.value = !openEmojiPicker.value,
                    child: StyledText(
                      emoji,
                      style: Style(
                        $text.style.ref(TextStyleVariant.emoji),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: EditableText(
                      controller: controller,
                      focusNode: focusNode,
                      autofocus: autofocus,
                      style: labelStyle,
                      onChanged: onLabelChanged,
                      onSubmitted: (_) => onSubmitted?.call(),
                      selectionHeightStyle: BoxHeightStyle.strut,
                      cursorColor: textSelectionTheme.cursorColor!,
                      backgroundCursorColor:
                          textSelectionTheme.selectionHandleColor!,
                      selectionColor: textSelectionTheme.selectionColor!,
                    ),
                  ),
                  if (controller.text.isEmpty)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IgnorePointer(
                        child: Text(
                          'Type your label',
                          style: labelStyle.copyWith(
                            color: ColorVariant.onSurface
                                .resolve(context)
                                .withOpacity(
                                  OpacityVariant.hightlight
                                      .resolve(context)
                                      .value,
                                ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
