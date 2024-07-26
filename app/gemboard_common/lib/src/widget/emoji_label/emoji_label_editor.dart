import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:mix/mix.dart';
import 'package:utils/utils.dart';

class EmojiLabelEditor extends HookWidget {
  const EmojiLabelEditor({
    super.key,
    required this.emoji,
    required this.label,
    this.onEmojiSelected,
    this.onLabelChanged,
    this.onSubmitted,
    this.autofocus = false,
    this.readOnly = false,
    this.labelStyle,
  });

  static const emojiPickerWidth = 290.0;

  final String emoji;
  final String label;
  final bool readOnly;
  final ValueChanged<String>? onEmojiSelected;
  final ValueChanged<String>? onLabelChanged;
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
        TextStyleVariant.p
            .resolve(context)
            .copyWith(color: ColorVariant.onSurface.resolve(context));

    return IgnorePointer(
      ignoring: readOnly,
      child: PortalTarget(
        visible: openEmojiPicker.value,
        anchor: const Aligned(
          target: Alignment.bottomLeft,
          follower: Alignment.topLeft,
        ),
        portalFollower: Padding(
          padding: EdgeInsets.only(
            top: SpaceVariant.gap.resolve(context) * 2,
          ),
          child: SizedBox(
            width: 280,
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
                    onEmojiSelected?.call(emoji);
                  },
                ),
              ),
            ),
          ),
        ),
        child: StyledRow(
          inherit: true,
          style: Style(
            $flex.gap.ref(SpaceVariant.gap),
          ),
          children: [
            SizedBox.square(
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
                      selectionHeightStyle: ui.BoxHeightStyle.strut,
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
        ),
      ),
    );
  }
}

class EmojiLabelEditorPopup extends HookWidget {
  const EmojiLabelEditorPopup({
    super.key,
    required this.visible,
    required this.background,
    this.emoji,
    this.label,
    this.onSubmitted,
    this.pickerSize,
    required this.child,
  });

  final bool visible;
  final ColorVariant background;

  final String? emoji;
  final String? label;

  final void Function(String emoji, String label)? onSubmitted;

  final double? pickerSize;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final randomEmoji = useMemoized(
      () => emoji ?? StringUtils.randomEmoji(),
      [visible, emoji],
    );
    final emojiNotifier = useState(randomEmoji);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        emojiNotifier.value = randomEmoji;
      });
      return null;
    }, [randomEmoji]);
    final labelNotifier = useValueNotifier(label ?? '');

    return LayoutBuilder(
      builder: (context, constraints) {
        final pickerSize = this.pickerSize ?? constraints.maxWidth;
        return PortalTarget(
          visible: visible,
          anchor: switch (pickerSize) {
            < EmojiLabelEditor.emojiPickerWidth => Aligned(
                target: Alignment.topRight,
                follower: Alignment.topLeft,
              ),
            _ => Aligned(
                target: Alignment.bottomCenter,
                follower: Alignment.topCenter,
              ),
          },
          portalFollower: Portal(
            child: SizedBox(
              height: double.maxFinite,
              width: math.max(pickerSize, EmojiLabelEditor.emojiPickerWidth),
              child: Align(
                alignment: Alignment.topCenter,
                child: DSCard(
                  background: background,
                  kind: DSCardKind.elevated,
                  style: Style(
                    switch (pickerSize) {
                      < EmojiLabelEditor.emojiPickerWidth =>
                        $box.margin.left.ref(SpaceVariant.gap),
                      _ => $box.margin.top.ref(SpaceVariant.gap),
                    },
                    $box.height(40),
                    $box.padding.horizontal.ref(SpaceVariant.gap),
                    $box.padding.vertical.ref(SpaceVariant.gap),
                  ),
                  child: EmojiLabelEditor(
                    emoji: emojiNotifier.value,
                    label: label ?? '',
                    autofocus: true,
                    onEmojiSelected: (value) => emojiNotifier.value = value,
                    onLabelChanged: (value) => labelNotifier.value = value,
                    onSubmitted: () => onSubmitted?.call(
                      emojiNotifier.value,
                      labelNotifier.value,
                    ),
                  ),
                ),
              ),
            ),
          ),
          child: child,
        );
      },
    );
  }
}
