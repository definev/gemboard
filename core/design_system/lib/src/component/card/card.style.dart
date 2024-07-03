part of 'card.dart';

class DSCardStyle {
  const DSCardStyle(this.kind);

  final DSCardKind kind;

  Style call(BuildContext context) {
    return Style(
      $box.padding.all.ref(space.SpaceVariant.medium),
      $box.color.ref(color.ColorVariant.background),
      $box.borderRadius.circular(space.SpaceVariant.small.resolve(context)),
      DSCardKind.outlined(
        $box.border.all.width(1),
        $box.border.all.color.ref(color.ColorVariant.disable),
      ),
      $on.focus(
        $box.shadow(
          color:
              color.ColorVariant.onBackgroundDim.resolve(context).withOpacity(
                    opacity.OpacityVariant.highlight.resolve(context).value,
                  ),
          offset: const Offset(0, 2),
          blurRadius: 4,
        ),
      ),
      $flex.gap.ref(space.SpaceVariant.small),
    ).applyVariants([kind]);
  }
}
