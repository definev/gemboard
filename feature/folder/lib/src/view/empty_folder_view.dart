import 'dart:math';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mix/mix.dart';

class EmptyFolderView extends StatelessWidget {
  const EmptyFolderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StyledText(
            '💎',
            style: Style(
              $text.style.ref(TextStyleVariant.emoji),
              $text.style.fontSize(48),
            ),
          )
              .animate(onPlay: (controller) => controller.loop(reverse: true))
              .scaleXY(begin: 1.0, end: 1.1)
              .shake(
                delay: Duration(seconds: 1),
                duration: Duration(
                  milliseconds: 400,
                ),
                hz: 2.5,
                rotation: pi / 10,
              ),
          SizedBox(
            height: SpaceVariant.small.resolve(context),
          ),
          StyledText(
            'Spark Your Imagination: Craft Your Gemboard!',
            style: Style(
              $text.style.ref(TextStyleVariant.p),
              $text.textAlign.center(),
            ),
          ),
        ],
      ),
    );
  }
}
