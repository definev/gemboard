part of 'textbox.dart';

class DSTextboxStyle {
  const DSTextboxStyle(
    this.kind,
    this.focusHighlight,
    this.readOnly,
  );

  final DSTextboxKind kind;
  final bool focusHighlight;
  final bool readOnly;

  Style call(BuildContext context) {
    final scale = DesignSystemTheme.of(context).scale;

    return Style(
      $box.color.ref(ColorVariant.surface),
      $box.padding.all.ref(SpaceVariant.small),
      switch (readOnly) {
        true => null,
        false => FocusVariant.focus(
            DSTextboxKind.outline(
              $box.border.all(
                width: 1.5 * scale,
                color: ColorVariant.onSurface.resolve(context),
                strokeAlign: BorderSide.strokeAlignInside,
              ),
            ),
          ),
      },
      switch (readOnly) {
        true => null,
        false => FocusVariant.unfocus(
            DSTextboxKind.outline(
              $box.border.all(
                width: 1.5 * scale,
                color: ColorVariant.onSurface.resolve(context).withValues(alpha:
                      OpacityVariant.hightlight.resolve(context).value,
                    ),
                strokeAlign: BorderSide.strokeAlignInside,
              ),
            ),
          ),
      },
    ).applyVariants([
      GestureTool.convertFocusVariant(focusHighlight),
      kind,
    ]).animate(
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }
}
