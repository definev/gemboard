import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mix/mix.dart';
import 'package:toastification/toastification.dart';

final class DSToast {
  const DSToast();

  static ToastificationItem error({
    required BuildContext context,
    required String title,
    Alignment alignment = Alignment.topCenter,
  }) {
    toastification.dismissAll();
    final missingApiKey = title ==
        '''Method doesn't allow unregistered callers (callers without established identity). Please use API Key or other form of API consumer identity to call this API.''';
    return toastification.showCustom(
      context: context, // optional if you use ToastificationWrapper
      dismissDirection: DismissDirection.up,
      builder: (context, holder) {
        var notificationRow = StyledRow(
          style: Style(
            $flex.gap.ref(SpaceVariant.medium),
          ),
          children: [
            StyledIcon(
              LineIcons.exclamationTriangle,
              style: Style(
                $icon.color.ref(ColorVariant.red),
              ),
            ),
            Expanded(
              child: StyledText(title),
            ),
            GestureDetector(
              onTap: () => toastification.dismiss(holder),
              child: StyledIcon(
                LineIcons.times,
                style: Style(
                  $icon.color.ref(ColorVariant.red),
                ),
              ),
            ),
          ],
        );
        return DSCard(
          style: Style(
            $box.padding.all(SpaceVariant.small.resolve(context)),
            $box.margin.bottom(SpaceVariant.medium.resolve(context)),
            $box.margin.top(18 + SpaceVariant.small.resolve(context)),
          ),
          kind: DSCardKind.outlined,
          background: ColorVariant.red,
          child: switch (missingApiKey) {
            true => StyledColumn(
                style: Style(
                  $flex.gap.ref(SpaceVariant.small),
                ),
                children: [
                  StyledRow(
                    children: [
                      Expanded(
                        child: StyledText(
                          'Add Gemini API key to use any AI feature',
                          style: Style(
                            $text.style.ref(TextStyleVariant.p),
                          ),
                        ),
                      ),
                      Button(
                        background: ColorVariant.red,
                        onPressed: () => toastification.dismiss(holder),
                        child: StyledIcon(
                          LineIcons.times,
                          style: Style(
                            $icon.size(24),
                            $icon.color.ref(ColorVariant.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Button(
                    style: Style(
                      $box.alignment.center(),
                    ),
                    kind: ButtonKind.filled,
                    background: ColorVariant.red,
                    onPressed: () {
                      toastification.dismiss(holder);
                      GoRouter.of(context).push('/settings');
                    },
                    child: StyledText('Add API Key'),
                  ),
                ],
              ),
            false => notificationRow,
          },
        );
      },
      animationDuration: Duration(milliseconds: 300),
      autoCloseDuration: switch (missingApiKey) {
        true => null,
        false => const Duration(seconds: 5),
      },
      alignment: alignment,
    );
  }
}
