part of 'textbox.dart';

class DSTextboxStyle {
  const DSTextboxStyle(this.focusHighlight);

  final bool focusHighlight;

  Style call(BuildContext context) {
    return Style(
      $box.color.ref(ColorVariant.surface),
      $box.padding.only(
        left: SpaceVariant.medium.resolve(context),
        right: SpaceVariant.medium.resolve(context),
        top: SpaceVariant.gap.resolve(context),
        bottom: SpaceVariant.gap.resolve(context),
      ),
      FocusVariant.focus(
        $box.border.all(
          width: 1.5,
          color: ColorVariant.onSurface.resolve(context),
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
      FocusVariant.unfocus(
        $box.border.all(
          width: 1.5,
          color: ColorVariant.onSurface.resolve(context).withOpacity(
                OpacityVariant.hightlight.resolve(context).value,
              ),
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
    ).applyVariants([
      GestureTool.convertFocusVariant(focusHighlight),
    ]).animate(
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }
}
