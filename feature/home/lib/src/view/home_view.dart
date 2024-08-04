import 'package:design_system/design_system.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:llm/llm.dart';
import 'package:mix/mix.dart';
import 'package:settings/settings.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.onOpenSidebar,
    required this.onOpenDesktop,
  });

  final VoidCallback onOpenSidebar;
  final VoidCallback onOpenDesktop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          DSAppbar(
            title: StyledText('Home'),
          ),
          Expanded(
            child: Center(
              child: PaddedColumn(
                padding: EdgeInsets.all(SpaceVariant.large.resolve(context)),
                mainAxisSize: MainAxisSize.min,
                children: [
                  StyledText(
                    'Welcome to Gemboard!',
                    style: Style(
                      $text.style.ref(TextStyleVariant.h5),
                      $text.style.fontWeight.w500(),
                      $text.textAlign.center(),
                    ),
                  ),
                  SizedBox(height: SpaceVariant.medium.resolve(context)),
                  StyledText(
                    '''
You can navigate to the whiteboard editor from the menu.
You can start discovering Gemboard by opening the "Desktop" board.''',
                    style: Style(
                      $text.style.ref(TextStyleVariant.p2),
                      $text.style.fontWeight.w500(),
                      $text.textAlign.center(),
                    ),
                  ),
                  SizedBox(height: SpaceVariant.medium.resolve(context)),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Button(
                        style: Style(
                          $box.margin.top.ref(SpaceVariant.large),
                          $box.padding.all.ref(SpaceVariant.medium),
                        ),
                        background: ColorVariant.green,
                        kind: ButtonKind.filled,
                        onPressed: onOpenSidebar,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            StyledIcon(IconlyBold.message),
                            SizedBox(
                                width: SpaceVariant.small.resolve(context)),
                            StyledText('Open sidebar'),
                          ],
                        ),
                      ),
                      Button(
                        style: Style(
                          $box.margin.top.ref(SpaceVariant.large),
                          $box.padding.all.ref(SpaceVariant.medium),
                        ),
                        background: ColorVariant.green,
                        kind: ButtonKind.outline,
                        onPressed: onOpenDesktop,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            StyledIcon(IconlyBold.home),
                            SizedBox(
                                width: SpaceVariant.small.resolve(context)),
                            StyledText('Desktop'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Consumer(
                    builder: (context, ref, child) {
                      final settingsNavigation =
                          ref.read(SettingsNavigation.provider);
                      final apiKey = ref.watch(getGeminiApiKeyProvider);
                      return switch (apiKey) {
                        AsyncData(:final value)
                            when value == null || value == '' =>
                          DSCard(
                            style: Style(
                              $box.margin
                                  .top(SpaceVariant.large.resolve(context)),
                              $box.padding.all.ref(SpaceVariant.small),
                              $box.maxWidth(288),
                            ),
                            kind: DSCardKind.elevated,
                            child: Column(
                              children: [
                                StyledText(
                                  'Go to the settings to configure your Gemini API key',
                                  style: Style(
                                    $text.textAlign.center(),
                                  ),
                                ),
                                Button(
                                  kind: ButtonKind.filled,
                                  style: Style(
                                    $box.margin.top.ref(SpaceVariant.small),
                                    $box.alignment.center(),
                                  ),
                                  onPressed: () =>
                                      settingsNavigation.pushSettingsFlow(),
                                  child: StyledText('Open settings'),
                                ),
                              ],
                            ),
                          ),
                        _ => SizedBox(),
                      };
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
