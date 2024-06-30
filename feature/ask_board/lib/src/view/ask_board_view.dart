import 'package:ask_board/src/domain/helper/create_id.dart';
import 'package:ask_board/src/domain/model/ask_board.dart';
import 'package:ask_board/src/domain/model/ask_page.dart';
import 'package:ask_board/src/provider/create_ask_page.dart';
import 'package:ask_board/src/provider/get_ask_page_list.dart';
import 'package:ask_board/src/view/ask_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ask_board_view.freezed.dart';
part 'ask_board_view.g.dart';

@freezed
class AskBoardAppearanceData with _$AskBoardAppearanceData {
  const factory AskBoardAppearanceData({
    required String id,
    required bool showSideBar,
  }) = _AskBoardAppearanceData;
}

@riverpod
class AskBoardAppearance extends _$AskBoardAppearance {
  AskBoardAppearanceData build(String id) {
    return AskBoardAppearanceData(
      id: id,
      showSideBar: false,
    );
  }

  void update(AskBoardAppearanceData data) {
    state = data;
  }
}

class AskBoardView extends HookConsumerWidget {
  const AskBoardView({
    super.key,
    required this.board,
  });

  final AskBoard board;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boardSessionId = useMemoized(() => Helper.createId());
    final appearance = ref.watch(askBoardAppearanceProvider(boardSessionId));
    final appearanceNotifier =
        ref.watch(askBoardAppearanceProvider(boardSessionId).notifier);

    final parentId = AskPageParentId(askBoardId: board.id.id);

    final theme = Theme.of(context);

    final selectedIndex = useState<AskPage?>(null);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: ColoredBox(
              color: switch (selectedIndex.value) {
                null => theme.colorScheme.primaryFixed,
                _ => theme.colorScheme.surface,
              },
              child: switch (selectedIndex.value) {
                null => Center(
                    child: Text('Select a page or create a new one'),
                  ),
                final page => AskPageView(
                    key: ValueKey((boardSessionId, page.id.id)),
                    page: page,
                    appearance: appearance,
                  ),
              },
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipPath(
                    clipper: ShapeBorderClipper(shape: theme.cardTheme.shape!),
                    child: SizedBox(
                      height: 56,
                      child: AppBar(
                        actions: [
                          IconButton(
                            icon: switch (appearance.showSideBar) {
                              true => Icon(Icons.view_sidebar_rounded),
                              false => Icon(Icons.view_sidebar_outlined),
                            },
                            onPressed: () => appearanceNotifier.update(
                              appearance.copyWith(
                                showSideBar: !appearance.showSideBar,
                              ),
                            ),
                          ),
                        ],
                        title: HookBuilder(
                          builder: (context) {
                            final controller = useTextEditingController(
                              text: board.title,
                            );
                            final focusNode = useFocusNode();

                            final style = DefaultTextStyle.of(context).style;

                            return EditableText(
                              controller: controller,
                              focusNode: focusNode,
                              style: style,
                              cursorColor: theme.primaryColor,
                              backgroundCursorColor: theme.secondaryHeaderColor,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  if (appearance.showSideBar)
                    Expanded(
                      child: LayoutBuilder(
                        builder: (context, constraints) => ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 300,
                          ),
                          child: SizedBox(
                            width: constraints.maxWidth / 3,
                            child: AskBoardEditorSideBar(
                              parentId: parentId,
                              selectedIndex: selectedIndex,
                            ),
                          ),
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AskBoardEditorSideBar extends ConsumerWidget {
  const AskBoardEditorSideBar({
    super.key,
    required this.parentId,
    required this.selectedIndex,
  });

  final AskPageParentId parentId;
  final ValueNotifier<AskPage?> selectedIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final createNewPageButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: ElevatedButton(
        onPressed: () async {
          final data = AskPage(
            id: AskPageId(id: Helper.createId(), parentId: parentId),
            title: 'New page',
            emoji: '🪄',
          );
          await ref.read(
            createAskPageProvider(
              parentId: parentId,
              data: data,
            ).future,
          );
          selectedIndex.value = data;
        },
        child: Text('Create new page'),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        createNewPageButton,
        Expanded(
          child: ClipPath(
            clipper: ShapeBorderClipper(shape: theme.cardTheme.shape!),
            child: HookConsumer(
              builder: (context, ref, child) {
                final askPageAsyncValue = ref.watch(
                  getAskPageListProvider(parentId),
                );

                return NavigationDrawer(
                  indicatorShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  tilePadding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 16.0,
                  ),
                  selectedIndex: switch (askPageAsyncValue) {
                    AsyncData(:final value) when selectedIndex.value != null =>
                      value.indexOf(selectedIndex.value!),
                    _ => -1,
                  },
                  onDestinationSelected: (index) async {
                    final page = askPageAsyncValue.whenOrNull(
                      data: (value) => value.elementAtOrNull(index),
                    );
                    if (page != null) {
                      selectedIndex.value = page;
                      return;
                    }
                  },
                  children: [
                    ...switch (askPageAsyncValue) {
                      AsyncData(:final value) => switch (value.isEmpty) {
                          true => [
                              SizedBox(
                                height: 200,
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        '🧞‍♂️',
                                        style: TextStyle(fontSize: 42),
                                      ),
                                      Center(
                                        child: Text('Start brainstorming'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          false => [
                              for (final page in value)
                                NavigationDrawerDestination(
                                  icon: Text(page.emoji),
                                  label: Text(page.title),
                                ),
                            ],
                        },
                      AsyncLoading() => [],
                      AsyncError() => [],
                      _ => [],
                    },
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
