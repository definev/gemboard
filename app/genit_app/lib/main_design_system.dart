import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:boundless_stack/boundless_stack.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:genit_common/genit_common.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    Portal(
      child: MixTheme(
        data: mixTheme,
        child: DesignSystemTheme(
          data: designSystemThemeData,
          child: const DesignSystemApp(),
        ),
      ),
    ),
  );

  doWhenWindowReady(() {
    const initialSize = Size(600, 450);
    appWindow.minSize = initialSize;
    // appWindow.size = initialSize;
    // appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class DesignSystemApp extends StatelessWidget {
  const DesignSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: dsTheme,
      home: const MasterView(),
    );
  }
}

class MasterView extends StatelessWidget {
  const MasterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorVariant.background.resolve(context),
      body: HookBuilder(
        builder: (context) {
          final scaleFactor = useState(0.5);

          final horizontalDetails = ScrollableDetails.horizontal(
            controller: useScrollController(),
          );
          final verticalDetails = ScrollableDetails.vertical(
            controller: useScrollController(),
          );

          final keys = useRef(<String, GlobalKey>{});

          return ZoomStackGestureDetector(
            scaleFactor: scaleFactor.value,
            onScaleFactorChanged: (value) => scaleFactor.value = value,
            stack: (key, scaleFactor) => BoundlessStack(
              key: key,
              horizontalDetails: horizontalDetails,
              verticalDetails: verticalDetails,
              delegate: BoundlessStackListDelegate(
                children: [
                  for (final (index, child) in [
                    Button(
                      kind: ButtonKind.flat,
                      background: ColorVariant.yellow,
                      onPressed: () {},
                      child: const StyledText('A Flat Button'),
                    ),
                    for (final background in [
                      ColorVariant.blue,
                      ColorVariant.cyan,
                      ColorVariant.green,
                      ColorVariant.pink,
                      ColorVariant.purple,
                    ]) ...[
                      Button(
                        kind: ButtonKind.outline,
                        background: background,
                        onPressed: () {},
                        child: const StyledText('An Outline Button'),
                      ),
                    ],
                    Button(
                      kind: ButtonKind.filled,
                      background: ColorVariant.yellow,
                      onPressed: () {},
                      child: const StyledText('An Outline Button'),
                    ),
                    DSCard(
                      child: DSCardSection(
                        header: const StyledText('A Card'),
                        content: Expanded(
                          child: StyledText('Lorem ipsum dolor sit amet ' * 20),
                        ),
                      ),
                    ),
                    DSCard(
                      background: ColorVariant.red,
                      kind: DSCardKind.outlined,
                      child: DSCardSection(
                        background: ColorVariant.red,
                        kind: DSCardKind.outlined,
                        header: const StyledText('A Card'),
                        content: Expanded(
                          child: StyledText('Lorem ipsum dolor sit amet ' * 20),
                        ),
                      ),
                    ),
                    DSCard(
                      background: ColorVariant.green,
                      kind: DSCardKind.elevated,
                      child: DSCardSection(
                        background: ColorVariant.green,
                        kind: DSCardKind.outlined,
                        header: const StyledText('A Card'),
                        content: Expanded(
                          child: StyledText('Lorem ipsum dolor sit amet ' * 20),
                        ),
                      ),
                    ),
                    DSCard(
                      background: ColorVariant.blue,
                      kind: DSCardKind.elevated,
                      child: DSCardSection(
                        background: ColorVariant.blue,
                        kind: DSCardKind.outlined,
                        header: const StyledText('A Card'),
                        content: Expanded(
                          child: StyledText('Lorem ipsum dolor sit amet ' * 20),
                        ),
                      ),
                    ),
                    Center(
                      child: HBox(
                        style: Style(
                          $flex.gap.ref(SpaceVariant.medium),
                          $flex.mainAxisSize.min(),
                        ),
                        children: [
                          DSToolbar(
                            children: [
                              DSToolbarItem(
                                child: const StyledIcon(IconlyLight.setting),
                              ),
                              DSToolbarItem(
                                child: const StyledIcon(IconlyLight.image_2),
                              ),
                              DSToolbarItem(
                                child: const StyledIcon(IconlyLight.bookmark),
                              ),
                              DSToolbarItem(
                                child:
                                    const StyledIcon(IconlyLight.ticket_star),
                              ),
                            ],
                          ),
                          DSToolbar(
                            direction: Axis.vertical,
                            children: [
                              DSToolbarItem(
                                child: const StyledIcon(IconlyLight.setting),
                              ),
                              DSToolbarItem(
                                child: const StyledIcon(IconlyLight.image_2),
                              ),
                              DSToolbarItem(
                                child: const StyledIcon(IconlyLight.bookmark),
                              ),
                              DSToolbarItem(
                                child:
                                    const StyledIcon(IconlyLight.ticket_star),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    DSSidebar(
                      sections: [
                        for (final background in [
                          ColorVariant.green,
                          ColorVariant.blue,
                          ColorVariant.purple,
                          ColorVariant.red,
                          ColorVariant.purple,
                        ])
                          DSSidebarSection(
                            pinned: false,
                            header: DSSidebarSectionHeader(
                              background: background,
                              title: StyledText('Astrology'),
                            ),
                            children: [
                              for (final item in [
                                ('🧞‍♂️', 'Astrology'),
                                ('🦀', 'Crab'),
                                ('🐶', 'Dog'),
                                ('🐱', 'Cat'),
                                ('♾️', 'Infinity'),
                                ('🔱', 'Death'),
                                ('🪄', 'Magic'),
                                ('🦅', 'Bird'),
                                ('🐵', 'Monkey'),
                                ('🐸', 'Frog'),
                                ('🐙', 'Octopus'),
                                ('🐳', 'Whale'),
                                ('🐋', 'Whale'),
                                ('🐬', 'Dolphin'),
                                ('🐟', 'Fish'),
                                ('🐠', 'Fish'),
                              ])
                                GenitEmojiButton(
                                  background: background,
                                  label: item.$1,
                                  emoji: item.$2,
                                ),
                            ],
                          ),
                      ],
                    ),
                    const Column(
                      children: [
                        DSTextbox(),
                      ],
                    ),
                    Column(
                      children: [
                        DSAppbar(
                          child: GenitAppBarTitle(
                            emoji: '🪄',
                            title: 'Magic',
                            onEmojiSelected: (value) => print(value),
                          ),
                        ),
                      ],
                    ),
                  ].indexed)
                    StackPosition(
                      key: keys.value['child_$index'] ??
                          () {
                            keys.value['child_$index'] = GlobalKey();
                            return keys.value['child_$index']!;
                          }(),
                      moveable: const StackMove(
                        enable: true,
                        snap: StackSnap(
                          heightSnap: 50,
                          widthSnap: 50,
                        ),
                      ),
                      data: StackPositionData(
                        id: 'child_$index',
                        layer: 0,
                        offset: Offset(
                          400.0 * (index % 5),
                          500.0 * (index ~/ 5),
                        ),
                        height: 400,
                        width: 300,
                      ),
                      builder: (context, notifier, child) => child!,
                      scaleFactor: scaleFactor,
                      child: child,
                    ),
                ],
              ),
              backgroundBuilder: GridBackground.backgroundBuilder(
                scale: scaleFactor,
                dotSize: SpaceVariant.gap.resolve(context),
              ),
              scaleFactor: scaleFactor,
            ),
          );
        },
      ),
    );
  }
}
