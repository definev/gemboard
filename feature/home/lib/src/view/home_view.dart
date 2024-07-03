import 'package:design_system/design_system.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(SpaceVariant.small.resolve(context)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(SpaceVariant.small.resolve(context)),
          border: Border.all(
            color: ColorVariant.disable.resolve(context),
            width: 0.5,
          ),
        ),
        position: DecorationPosition.foreground,
        child: Scaffold(
          appBar: DSAppBar(
            title: StyledText('Your space'),
          ),
          body: PaddedColumn(
            padding: EdgeInsets.all(SpaceVariant.mediumLarge.resolve(context)),
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StyledText(
                'Welcome to your space',
                style: Style(
                  $text.style.ref(TextStyleVariant.title),
                ),
              ),
              StyledText(
                'Welcome to your space',
                style: Style(
                  $text.style.ref(TextStyleVariant.title),
                ),
              ),
              Button(
                onPressed: () {},
                child: StyledText('Start chat'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
