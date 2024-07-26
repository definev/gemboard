import 'package:design_system/design_system.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.onOpenSidebar});

  final VoidCallback onOpenSidebar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Welcome to the home page!',
                    style: Style(
                      $text.style.ref(TextStyleVariant.h4),
                      $text.style.fontWeight.w500(),
                      $text.textAlign.center(),
                    ),
                  ),
                  SizedBox(height: SpaceVariant.medium.resolve(context)),
                  StyledText(
                    'You can navigate to the whiteboard editor from the menu.',
                    style: Style(
                      $text.style.ref(TextStyleVariant.p),
                      $text.style.fontWeight.w500(),
                      $text.textAlign.center(),
                    ),
                  ),
                  SizedBox(height: SpaceVariant.medium.resolve(context)),
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
                        SizedBox(width: SpaceVariant.small.resolve(context)),
                        StyledText('Open sidebar'),
                      ],
                    ),
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
