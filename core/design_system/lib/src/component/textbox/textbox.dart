import 'dart:ui';

import 'package:design_system/design_system.dart';
import 'package:design_system/src/component/gesture/gesture_tool.dart';
import 'package:design_system/src/token/gesture/gesture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mix/mix.dart';

part 'textbox.style.dart';
part 'textbox.variant.dart';

class DSTextbox extends StyledWidget {
  const DSTextbox({
    super.key,
    super.orderOfModifiers = const [],
    super.inherit,
    super.style,
    this.kind = DSTextboxKind.outline,
    this.focusNode,
    this.autofocus = false,
    this.obscureText = false,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.hintText,
    this.minLines,
    this.maxLines,
    this.textStyle,
    this.trailing,
    this.label,
  });

  final DSTextboxKind kind;

  final Widget? label;

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FocusNode? focusNode;
  final bool autofocus;
  final String? hintText;
  final int? minLines;
  final int? maxLines;
  final bool obscureText;
  final TextStyle? textStyle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return HookBuilder(
      builder: (context) {
        final defaultFocusNode = focusNode ?? useFocusNode();
        useListenable(defaultFocusNode);
        final dsTextboxStyle = DSTextboxStyle(
          kind,
          defaultFocusNode.hasFocus,
        );

        final textStyle = this.textStyle ?? TextStyleVariant.p.resolve(context);

        return withMix(
          context,
          (context) {
            Widget child = Box(
              style: dsTextboxStyle(context).merge(style),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextFormField(
                      selectionHeightStyle: BoxHeightStyle.strut,
                      controller: controller,
                      focusNode: defaultFocusNode,
                      autofocus: autofocus,
                      obscureText: obscureText,
                      onChanged: onChanged,
                      onFieldSubmitted: onSubmitted,
                      cursorColor: ColorVariant.onSurface.resolve(context),
                      cursorWidth: 1.5,
                      cursorHeight: textStyle.height,
                      style: textStyle,
                      minLines: minLines,
                      maxLines: switch (obscureText) {
                        true => 1,
                        _ => maxLines,
                      },
                      decoration: InputDecoration.collapsed(
                        hintText: hintText,
                        hintStyle: textStyle.copyWith(
                          color: Colors.grey.shade400,
                        ),
                        focusColor: Colors.red,
                        fillColor: Colors.red,
                      ),
                    ),
                  ),
                  if (trailing case final trailing?)
                    Mix(
                      data: Style(
                        $box.padding.right.ref(SpaceVariant.gap),
                        $icon.size(20),
                        $icon.color.ref(ColorVariant.onSurface),
                      ).of(context),
                      child: trailing,
                    ),
                ],
              ),
            );

            if (label != null) {
              child = Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Mix(
                    data: Style(
                      $text.style.ref(TextStyleVariant.p2),
                      $text.style.fontWeight.bold(),
                    ).of(context),
                    child: label!,
                  ),
                  SizedBox(height: SpaceVariant.gap.resolve(context)),
                  child,
                ],
              );
            }

            return child;
          },
        );
      },
    );
  }
}
