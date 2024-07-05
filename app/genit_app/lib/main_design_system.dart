import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:sliver_tools/sliver_tools.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MixTheme(
      data: mixTheme,
      child: DesignSystemTheme(
        data: designSystemThemeData,
        child: const DesignSystemApp(),
      ),
    ),
  );

  doWhenWindowReady(() {
    const initialSize = Size(600, 450);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    // appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class DesignSystemApp extends StatelessWidget {
  const DesignSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MasterView(),
    );
  }
}

class MasterView extends StatelessWidget {
  const MasterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorVariant.background.resolve(context),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.all(SpaceVariant.large.resolve(context)),
            sliver: MultiSliver(
              children: [
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
                  SizedBox(height: SpaceVariant.medium.resolve(context)),
                  Button(
                    kind: ButtonKind.outline,
                    background: background,
                    onPressed: () {},
                    child: const StyledText('An Outline Button'),
                  ),
                ],
                SizedBox(height: SpaceVariant.medium.resolve(context)),
                Button(
                  kind: ButtonKind.filled,
                  background: ColorVariant.yellow,
                  onPressed: () {},
                  child: const StyledText('An Outline Button'),
                ),
                SizedBox(height: SpaceVariant.medium.resolve(context)),
                SliverGrid(
                  delegate: SliverChildListDelegate(
                    [
                      DSCard(
                        child: DSCardSection(
                          header: StyledText('A Card'),
                          content: Expanded(
                            child:
                                StyledText('Lorem ipsum dolor sit amet ' * 20),
                          ),
                        ),
                      ),
                      DSCard(
                        background: ColorVariant.red,
                        kind: DSCardKind.outlined,
                        child: DSCardSection(
                          background: ColorVariant.red,
                          kind: DSCardKind.outlined,
                          header: StyledText('A Card'),
                          content: Expanded(
                            child:
                                StyledText('Lorem ipsum dolor sit amet ' * 20),
                          ),
                        ),
                      ),
                      DSCard(
                        background: ColorVariant.green,
                        kind: DSCardKind.elevated,
                        child: DSCardSection(
                          background: ColorVariant.green,
                          kind: DSCardKind.outlined,
                          header: StyledText('A Card'),
                          content: Expanded(
                            child:
                                StyledText('Lorem ipsum dolor sit amet ' * 20),
                          ),
                        ),
                      ),
                      DSCard(
                        background: ColorVariant.blue,
                        kind: DSCardKind.elevated,
                        child: DSCardSection(
                          background: ColorVariant.blue,
                          kind: DSCardKind.outlined,
                          header: StyledText('A Card'),
                          content: Expanded(
                            child:
                                StyledText('Lorem ipsum dolor sit amet ' * 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    crossAxisSpacing: SpaceVariant.medium.resolve(context),
                    mainAxisSpacing: SpaceVariant.medium.resolve(context),
                  ),
                ),
                SizedBox(height: SpaceVariant.medium.resolve(context)),
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
                            child: StyledIcon(IconlyLight.setting),
                          ),
                          DSToolbarItem(
                            child: StyledIcon(IconlyLight.image_2),
                          ),
                          DSToolbarItem(
                            child: StyledIcon(IconlyLight.bookmark),
                          ),
                          DSToolbarItem(
                            child: StyledIcon(IconlyLight.ticket_star),
                          ),
                        ],
                      ),
                      DSToolbar(
                        direction: Axis.vertical,
                        children: [
                          DSToolbarItem(
                            child: StyledIcon(IconlyLight.setting),
                          ),
                          DSToolbarItem(
                            child: StyledIcon(IconlyLight.image_2),
                          ),
                          DSToolbarItem(
                            child: StyledIcon(IconlyLight.bookmark),
                          ),
                          DSToolbarItem(
                            child: StyledIcon(IconlyLight.ticket_star),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
