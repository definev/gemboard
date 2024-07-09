
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:mix/mix.dart';

class GenitAppBarTitle extends HookWidget {
  const GenitAppBarTitle({
    super.key,
    required this.emoji,
    required this.title,
    required this.onEmojiSelected,
  });

  final String emoji;
  final String title;
  final ValueChanged<String> onEmojiSelected;

  @override
  Widget build(BuildContext context) {
    final textSelectionTheme = Theme.of(context).textSelectionTheme;

    final controller = useTextEditingController(text: 'Magic');
    final focusNode = useFocusNode();

    final openEmojiPicker = useState(false);

    return LayoutBuilder(
      builder: (context, constraints) {
        final size = constraints.biggest;
        return StyledRow(
          inherit: true,
          style: Style(
            $flex.gap.ref(SpaceVariant.gap),
          ),
          children: [
            PortalTarget(
              visible: openEmojiPicker.value,
              anchor: const Aligned(
                target: Alignment.bottomLeft,
                follower: Alignment.topLeft,
              ),
              portalFollower: Padding(
                padding: EdgeInsets.only(
                  top: SpaceVariant.gap.resolve(context) +
                      SpaceVariant.small.resolve(context),
                ),
                child: Box(
                  style: Style(
                    $box.height(291),
                    $box.width(size.width),
                  ),
                  child: DSEmojiPicker(
                    onSelected: onEmojiSelected,
                  ),
                ),
              ),
              child: Button(
                style: Style(
                  $box.width(32),
                  $box.height(32),
                  $box.padding.all(0),
                ),
                background: ColorVariant.onSurface,
                onPressed: () => openEmojiPicker.value = !openEmojiPicker.value,
                child: const Center(
                  child: StyledText('🪄'),
                ),
              ),
            ),
            Expanded(
              child: EditableText(
                controller: controller,
                focusNode: focusNode,
                style: TextStyleVariant.h6.resolve(context).copyWith(
                      color: ColorVariant.onSurface.resolve(context),
                    ),
                cursorColor: textSelectionTheme.cursorColor!,
                backgroundCursorColor: textSelectionTheme.selectionHandleColor!,
                selectionColor: textSelectionTheme.selectionColor!,
              ),
            ),
          ],
        );
      },
    );
  }
}