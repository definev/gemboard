import 'package:flutter/material.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/ic.dart';
import 'package:mix/mix.dart';

part 'back_button.style.dart';
part 'back_button.variant.dart';

class DSBackButton extends StyledWidget {
  const DSBackButton({
    super.key,
    this.onPressed,
    super.orderOfModifiers = const [],
    super.style,
    super.inherit,
    this.kind = DSBackButtonKind.back,
  });

  final VoidCallback? onPressed;

  final DSBackButtonKind kind;

  @override
  Widget build(BuildContext context) {
    return withMix(
      context,
      (context) {
        final iconSpec = IconSpec.of(context);

        return Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: onPressed ?? () => Navigator.of(context).pop(),
            child: Iconify(
              switch (kind) {
                DSBackButtonKind.close => Ic.round_close,
                DSBackButtonKind.back => Ic.round_arrow_back,
                _ => Ic.round_arrow_back,
              },
              color: switch (iconSpec.color) {
                final color? => color,
                _ => null,
              },
            ),
          ),
        );
      },
    );
  }
}
