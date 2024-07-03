import 'package:design_system/src/token/color.dart' as color;
import 'package:design_system/src/token/opacity.dart' as opacity;
import 'package:design_system/src/token/spaces.dart' as space;
import 'package:design_system/src/token/text_styles.dart' as textStyles;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mix/mix.dart';

part 'textbox.style.dart';
part 'textbox.variant.dart';

class DSTextbox extends StyledWidget {
  DSTextbox({
    super.key,
    super.inherit,
    super.style,
    super.orderOfModifiers = const [],
    this.controller,
    this.focusNode,
    this.hintText = '',
    this.label,
    this.inputFormatters,
    this.validator,
    this.minLines,
    this.maxLines = 1,
    this.obscureText = false,
    this.keyboardType,
    this.onChanged,
    //
    this.state = const TextboxStateVariant.inherit(),
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  final String? label;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;

  final TextboxStateVariant state;

  final String hintText;
  final int? minLines;
  final int? maxLines;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final duration = Duration(milliseconds: 200);
    final curve = Curves.ease;

    return HookBuilder(
      builder: (context) {
        final stateVariant =
            useState<TextboxStateVariant>(TextboxStateVariant.unfocus());
        final errorMessage = useState<String?>(null);

        final focusNode = this.focusNode ?? useFocusNode();
        useEffect(() {
          void onFocusNode() {
            if (stateVariant.value != TextboxStateVariant.error()) {
              stateVariant.value = switch (focusNode.hasFocus) {
                false => TextboxStateVariant.unfocus(),
                true => TextboxStateVariant.focus(),
              };
            }
          }

          focusNode.addListener(onFocusNode);
          return () => focusNode.removeListener(onFocusNode);
        }, [focusNode]);

        final controller = this.controller ?? useTextEditingController();
        useEffect(() {
          void onController() {
            if (validator != null) {
              errorMessage.value = validator!(controller.text);
              stateVariant.value = switch (errorMessage.value) {
                final _? => TextboxStateVariant.error(),
                _ => switch (focusNode.hasFocus) {
                    true => TextboxStateVariant.focus(),
                    false => TextboxStateVariant.unfocus(),
                  },
              };
            }
          }

          controller.addListener(onController);
          return () => controller.removeListener(onController);
        }, [controller, validator]);

        final type = switch (label) {
          null => UnlabelTextboxVariant(),
          _ => LabelTextboxVariant(),
        };

        final style = TextboxStyle(
          switch (state) {
            InheritTextboxVariant() => stateVariant.value,
            _ => state,
          },
          type,
        );

        return VBox(
          style: Style(
            $flex.gap(4),
            $flex.crossAxisAlignment(CrossAxisAlignment.start),
          ),
          children: [
            Box(
              style: style(context).animate(
                duration: duration,
                curve: curve,
              ),
              child: Builder(
                builder: (context) {
                  final textSpec = TextSpec.of(context);

                  return Theme(
                    data: Theme.of(context).copyWith(
                      textSelectionTheme: TextSelectionThemeData(
                        selectionColor: color.ColorVariant.primary
                            .resolve(context)
                            .withOpacity(opacity.OpacityVariant.dim
                                .resolve(context)
                                .value),
                        selectionHandleColor:
                            color.ColorVariant.primary.resolve(context),
                      ),
                    ),
                    child: VBox(
                      children: [
                        VBox(
                          style: Style(
                            $flex.gap(4),
                            $flex.crossAxisAlignment(CrossAxisAlignment.start),
                            $flex.mainAxisSize(MainAxisSize.min),
                          ),
                          children: [
                            if (label case final label?)
                              StyledText(
                                label,
                                style: style.label(context).animate(
                                      duration: duration,
                                      curve: curve,
                                    ),
                              ),
                            TextFormField(
                              controller: controller,
                              focusNode: focusNode,
                              obscureText: obscureText,
                              keyboardType: keyboardType,
                              onChanged: onChanged,
                              decoration: InputDecoration.collapsed(
                                hintText: hintText,
                                hintStyle: textSpec.style?.copyWith(
                                  color: color.ColorVariant.border
                                      .resolve(context),
                                ),
                                focusColor: color.ColorVariant.onPrimary
                                    .resolve(context),
                              ),
                              style: textSpec.style,
                              cursorColor: textSpec.style?.color,
                              cursorHeight: textSpec.style?.fontSize,
                              cursorWidth: 1.5,
                              cursorRadius: Radius.circular(2),
                              minLines: minLines,
                              maxLines: maxLines,
                              inputFormatters: inputFormatters,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            if (errorMessage.value case final errorMessage?)
              StyledText(
                errorMessage,
                style: style.errorText(context).animate(
                      duration: duration,
                      curve: curve,
                    ),
              ),
          ],
        );
      },
    );
  }
}
