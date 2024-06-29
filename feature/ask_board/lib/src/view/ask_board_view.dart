import 'package:ask_board/src/domain/helper/create_id.dart';
import 'package:ask_board/src/domain/model/ask_board.dart';
import 'package:ask_board/src/domain/model/ask_page.dart';
import 'package:ask_board/src/provider/create_ask_page.dart';
import 'package:ask_board/src/provider/get_ask_page_list.dart';
import 'package:ask_board/src/view/ask_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AskBoardView extends HookConsumerWidget {
  const AskBoardView({
    super.key,
    required this.board,
  });

  final AskBoard board;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parentId = AskPageParentId(askBoardId: board.id.id);

    final theme = Theme.of(context);

    final selectedIndex = useState<AskPage?>(null);

    var createNewPageButton = Padding(
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
                final page => AskPageView(page: page),
              },
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipPath(
                      clipper:
                          ShapeBorderClipper(shape: theme.cardTheme.shape!),
                      child: SizedBox(
                        height: 56,
                        child: AppBar(
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
                                backgroundCursorColor:
                                    theme.secondaryHeaderColor,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    createNewPageButton,
                    Expanded(
                      child: ClipPath(
                        clipper:
                            ShapeBorderClipper(shape: theme.cardTheme.shape!),
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
                                AsyncData(:final value)
                                    when selectedIndex.value != null =>
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
                                  AsyncData(:final value) => switch (
                                        value.isEmpty) {
                                      true => [
                                          SizedBox(
                                            height: 200,
                                            child: Center(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    '🧞‍♂️',
                                                    style:
                                                        TextStyle(fontSize: 42),
                                                  ),
                                                  Center(
                                                    child: Text(
                                                        'Start brainstorming'),
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
