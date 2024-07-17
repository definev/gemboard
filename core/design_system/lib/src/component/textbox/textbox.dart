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
    this.controller,
    this.onChanged,
    this.hintText,
    this.minLines,
    this.maxLines,
    this.textStyle,
    this.trailing,
  });

  final DSTextboxKind kind;

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final FocusNode? focusNode;
  final bool autofocus;
  final String? hintText;
  final int? minLines;
  final int? maxLines;
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
          (context) => Box(
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
                    onChanged: onChanged,
                    cursorColor: ColorVariant.onSurface.resolve(context),
                    cursorWidth: 1.5,
                    cursorHeight: textStyle.height,
                    style: textStyle,
                    minLines: minLines,
                    maxLines: maxLines,
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
                if (trailing case final trailing?) trailing,
              ],
            ),
          ),
        );
      },
    );
  }
}
