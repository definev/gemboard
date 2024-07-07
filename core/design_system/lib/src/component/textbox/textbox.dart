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
    this.focusNode,
    this.autofocus = false,
    this.controller,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return HookBuilder(
      builder: (context) {
        final defaultFocusNode = focusNode ?? useFocusNode();
        useListenable(defaultFocusNode);
        final dsTextboxStyle = DSTextboxStyle(defaultFocusNode.hasFocus);
        final textStyle = TextStyleVariant.p.resolve(context);

        return withMix(
          context,
          (context) => Box(
            style: dsTextboxStyle(context).merge(style),
            child: Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: TextFormField(
                controller: controller,
                focusNode: defaultFocusNode,
                autofocus: autofocus,
                cursorColor: ColorVariant.onSurface.resolve(context),
                cursorWidth: 1.5,
                cursorHeight: textStyle.height,
                style: textStyle,
                decoration: InputDecoration.collapsed(
                  hintText: '',
                  hintStyle: TextStyleVariant.p.resolve(context),
                  focusColor: Colors.red,
                  fillColor: Colors.red,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
