import 'package:ask_board/src/domain/helper/create_id.dart';
import 'package:ask_board/src/domain/model/ask_cell.dart';
import 'package:ask_board/src/domain/model/ask_page.dart';
import 'package:ask_board/src/provider/create_ask_cell.dart';
import 'package:ask_board/src/provider/get_ask_cell_list.dart';
import 'package:ask_board/src/provider/update_ask_cell.dart';
import 'package:boundless_stack/boundless_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AskPageView extends StatefulHookConsumerWidget {
  const AskPageView({
    super.key,
    required this.page,
  });

  final AskPage page;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _AskPageViewState();
  }
}

class _AskPageViewState extends ConsumerState<AskPageView> {
  Map<AskCellId, GlobalKey> _askCellKeys = {};
  GlobalKey testKey = GlobalKey();

  ScrollableDetails horizontalDetails = ScrollableDetails.horizontal(
    controller: ScrollController(),
  );
  ScrollableDetails verticalDetails = ScrollableDetails.vertical(
    controller: ScrollController(),
  );

  @override
  Widget build(BuildContext context) {
    final parentId = AskCellParentId(
      askBoardId: widget.page.id.parentId.askBoardId,
      askPageId: widget.page.id.id,
    );

    final cellsAsyncNotifier = ref.watch(
      getAskCellListProvider(parentId: parentId),
    );

    return switch (cellsAsyncNotifier) {
      AsyncLoading() => Center(child: CircularProgressIndicator()),
      AsyncError(:final error) => Center(child: Text(error.toString())),
      AsyncData(value: final cells) => () {
          for (final cell in cells) {
            if (!_askCellKeys.containsKey(cell.id)) {
              _askCellKeys[cell.id] = GlobalKey();
            }
          }

          return Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () => ref.read(
                createAskCellProvider(
                  parentId: parentId,
                  data: AskCell.cell(
                    id: AskCellId(
                      parentId: AskCellParentId(
                        askBoardId: widget.page.id.parentId.askBoardId,
                        askPageId: widget.page.id.id,
                      ),
                      id: Helper.createId(),
                    ),
                    position: Offset.zero,
                    size: Size.square(200),
                    inputs: [],
                  ),
                ),
              ),
              label: Text('Start new chat'),
              icon: const Icon(Icons.waving_hand),
            ),
            // body: HomeView(),
            body: ZoomStackGestureDetector(
              stack: (scaleFactor) => BoundlessStack(
                scaleFactor: scaleFactor,
                horizontalDetails: horizontalDetails,
                verticalDetails: verticalDetails,
                backgroundBuilder: gridBackgroundBuilder(
                  gridThickness: 1.0,
                  gridWidth: 100,
                  gridHeight: 100,
                  gridColor: Colors.grey.withOpacity(0.5),
                  scaleFactor: scaleFactor,
                ),
                delegate: BoundlessStackListDelegate(
                  children: [
                    for (final data in cells)
                      StackPosition(
                        key: _askCellKeys[data.id]!,
                        moveable: StackMove(
                          enable: true,
                          snap: StackSnap(
                            snap: true,
                            heightSnap: 100,
                            widthSnap: 100,
                          ),
                        ),
                        data: StackPositionData(
                          layer: 0,
                          offset: data.position,
                          height: data.size.height,
                          width: data.size.width,
                        ),
                        builder: (context, notifier, child) => HookBuilder(
                          builder: (context) {
                            useEffect(() {
                              void listener() {
                                final offset = notifier.value.offset;
                                if (offset != data.position) {
                                  ref.read(updateAskCellProvider(
                                      id: data.id,
                                      data: data.copyWith(
                                        position: offset,
                                      ),
                                    ),
                                  );
                                }
                              }

                              notifier.addListener(listener);
                              return () {
                                notifier.removeListener(listener);
                              };
                            }, []);
                            return AskCellView(data: data);
                          },
                        ),
                        scaleFactor: scaleFactor,
                      ),
                  ],
                ),
              ),
            ),
          );
        }(),
      _ => const SizedBox.shrink(),
    };
  }
}

class AskCellView extends StatelessWidget {
  const AskCellView({
    super.key,
    required this.data,
  });

  final AskCell data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextField(),
          Text('${data.id.id}'),
        ],
      ),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey _stack0PositionKey = GlobalKey();
  final GlobalKey _stack1PositionKey = GlobalKey();

  Offset referencefocalOriginal = Offset.zero;

  final ScrollableDetails _horizontalDetails = ScrollableDetails.horizontal(
    controller: ScrollController(
      initialScrollOffset: -100,
    ),
  );
  final ScrollableDetails _verticalDetails = ScrollableDetails.vertical(
    controller: ScrollController(
      initialScrollOffset: -100,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomStackGestureDetector(
        stack: (scaleFactor) => BoundlessStack(
          scaleFactor: scaleFactor,
          backgroundBuilder: gridBackgroundBuilder(
            gridThickness: 1.0,
            gridWidth: 100,
            gridHeight: 100,
            gridColor: Colors.green,
            scaleFactor: scaleFactor,
          ),
          horizontalDetails: _horizontalDetails,
          verticalDetails: _verticalDetails,
          delegate: BoundlessStackListDelegate(
            children: [
              StackPosition(
                key: _stack0PositionKey,
                scaleFactor: scaleFactor,
                data: const StackPositionData(
                  layer: 0,
                  offset: Offset(400, 100),
                  height: 300,
                  width: 700,
                ),
                moveable: const StackMove(
                  enable: true,
                  snap: StackSnap(
                    snap: true,
                    heightSnap: 50,
                    widthSnap: 50,
                  ),
                ),
                builder: (context, notifier, child) {
                  return ColoredBox(
                    color: Colors.amber.shade50,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: FilledButton(
                            onPressed: () {
                              notifier.value = notifier.value.copyWith(
                                height: notifier.value.height! + 10,
                                width: notifier.value.width! + 10,
                              );
                            },
                            child: const Text('Top Left'),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: FilledButton(
                            onPressed: () {
                              notifier.value = notifier.value.copyWith(
                                height: notifier.value.height! - 10,
                                width: notifier.value.width! - 10,
                              );
                            },
                            child: const Text('Bottom Right'),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              StackPosition(
                key: _stack1PositionKey,
                scaleFactor: scaleFactor,
                data: const StackPositionData(
                  layer: 0,
                  offset: Offset(400, 500),
                  height: 300,
                  width: 700,
                ),
                moveable: const StackMove(
                  enable: true,
                  snap: null,
                  // snap: StackSnap(
                  //   snap: true,
                  //   heightSnap: 50,
                  //   widthSnap: 50,
                  // ),
                ),
                builder: (context, notifier, child) {
                  return ColoredBox(
                    color: Colors.amber.shade50,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: FilledButton(
                            onPressed: () {
                              notifier.value = notifier.value.copyWith(
                                height: notifier.value.height! + 10,
                                width: notifier.value.width! + 10,
                              );
                            },
                            child: const Text('Top Left'),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: FilledButton(
                            onPressed: () {
                              notifier.value = notifier.value.copyWith(
                                height: notifier.value.height! - 10,
                                width: notifier.value.width! - 10,
                              );
                            },
                            child: const Text('Bottom Right'),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
