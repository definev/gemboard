import 'package:ask_board/src/domain/helper/create_id.dart';
import 'package:ask_board/src/domain/model/ask_cell.dart';
import 'package:ask_board/src/domain/model/ask_page.dart';
import 'package:ask_board/src/provider/create_ask_cell.dart';
import 'package:ask_board/src/provider/get_ask_cell_list.dart';
import 'package:ask_board/src/provider/update_ask_cell.dart';
import 'package:ask_board/src/view/ask_board_view.dart';
import 'package:ask_board/src/view/ask_cell_view.dart';
import 'package:boundless_stack/boundless_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ask_page_view.freezed.dart';
part 'ask_page_view.g.dart';

@freezed
class AskPageAppearanceData with _$AskPageAppearanceData {
  const factory AskPageAppearanceData({
    required AskPageId id,
    required double scaleFactor,
    required Offset offset,
  }) = _AskPageAppearanceData;
}

@Riverpod(keepAlive: true)
class AskPageAppearance extends _$AskPageAppearance {
  AskPageAppearanceData build({
    required String askBoardId,
    required AskPageId id,
  }) {
    return AskPageAppearanceData(
      scaleFactor: 1.0,
      id: id,
      offset: Offset.zero,
    );
  }

  void update(AskPageAppearanceData data) {
    state = data;
  }
}

class AskPageView extends StatefulHookConsumerWidget {
  const AskPageView({
    super.key,
    required this.page,
    required this.askBoardAppearance,
  });

  final AskPage page;
  final AskBoardAppearanceData askBoardAppearance;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _AskPageViewState();
  }
}

class _AskPageViewState extends ConsumerState<AskPageView> {
  Map<AskCellId, GlobalKey> _askCellKeys = {};
  GlobalKey testKey = GlobalKey();

  late ScrollableDetails horizontalDetails = ScrollableDetails.horizontal(
    controller: ScrollController(
      initialScrollOffset: appearanceOffset.dx,
    ),
  );
  late ScrollableDetails verticalDetails = ScrollableDetails.vertical(
    controller: ScrollController(
      initialScrollOffset: appearanceOffset.dy,
    ),
  );

  late Offset appearanceOffset = ref.read(askPageAppearanceProvider(
    id: widget.page.id,
    askBoardId: widget.askBoardAppearance.id,
  ).select((a) => a.offset));

  Offset get topLeft => Offset(
        horizontalDetails.controller!.offset,
        verticalDetails.controller!.offset,
      );

  void updateAppearanceOffset() {
    final appearance = ref.read(
      askPageAppearanceProvider(
        id: widget.page.id,
        askBoardId: widget.askBoardAppearance.id,
      ),
    );
    final notifier = ref.read(
      askPageAppearanceProvider(
        id: widget.page.id,
        askBoardId: widget.askBoardAppearance.id,
      ).notifier,
    );
    notifier.update(
      appearance.copyWith(offset: topLeft),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      horizontalDetails.controller!.jumpTo(appearanceOffset.dx);
      verticalDetails.controller!.jumpTo(appearanceOffset.dy);
    });
    horizontalDetails.controller?.addListener(updateAppearanceOffset);
    verticalDetails.controller?.addListener(updateAppearanceOffset);
  }

  @override
  void dispose() {
    super.dispose();
    horizontalDetails.controller?.removeListener(updateAppearanceOffset);
    verticalDetails.controller?.removeListener(updateAppearanceOffset);
  }

  void createAskCell({
    required double scaleFactor,
    required AskCellParentId parentId,
    required AskCell data,
  }) {
    final screenSize = MediaQuery.sizeOf(context);
    final padding = MediaQuery.paddingOf(context);

    Offset baseTopLeft = Offset.zero;
    baseTopLeft += Offset(
      switch (widget.askBoardAppearance.showSideBar) {
        true => screenSize.width * AskBoardAppearanceData.sideBarWidthRatio,
        false => 0,
      },
      24 + 56,
    );
    baseTopLeft += Offset(
      padding.left,
      padding.top,
    );
    baseTopLeft += topLeft;

    ref.read(
      createAskCellProvider(
        parentId: parentId,
        data: data.copyWith(
          position: Offset(
            (baseTopLeft.dx / 100).ceilToDouble() * 100.0,
            (baseTopLeft.dy / 100).ceilToDouble() * 100.0,
          ),
          size: Size(400, 600),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final parentId = AskCellParentId(
      askBoardId: widget.page.id.parentId.askBoardId,
      askPageId: widget.page.id.id,
    );

    final cellsAsyncNotifier = ref.watch(
      getAskCellListProvider(parentId: parentId),
    );

    final askPageAppearance = ref.watch(
      askPageAppearanceProvider(
        id: widget.page.id,
        askBoardId: widget.askBoardAppearance.id,
      ),
    );
    final askPageAppearanceNotifier = ref.read(
      askPageAppearanceProvider(
        id: widget.page.id,
        askBoardId: widget.askBoardAppearance.id,
      ).notifier,
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
              onPressed: () => createAskCell(
                scaleFactor: askPageAppearance.scaleFactor,
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
              label: Text('Start new chat'),
              icon: const Icon(Icons.waving_hand),
            ),
            // body: HomeView(),
            body: ZoomStackGestureDetector(
              scaleFactor: askPageAppearance.scaleFactor,
              onScaleFactorChanged: (scaleFactor) {
                askPageAppearanceNotifier.update(
                  askPageAppearance.copyWith(scaleFactor: scaleFactor),
                );
              },
              stack: (key, scaleFactor) => BoundlessStack(
                key: key,
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
                            heightSnap: 100,
                            widthSnap: 100,
                          ),
                        ),
                        data: StackPositionData(
                          layer: 0,
                          offset: data.position,
                          height: data.size.height,
                          width: data.size.width,
                          id: data.id.id,
                        ),
                        builder: (context, notifier, child) => HookBuilder(
                          builder: (context) {
                            useEffect(() {
                              void listener() {
                                final offset = notifier.value.offset;
                                if (offset != data.position) {
                                  ref.read(
                                    updateAskCellProvider(
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
