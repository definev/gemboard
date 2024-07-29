import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home/src/view/home_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whiteboard/whiteboard.dart';

part 'home_flow.freezed.dart';

@freezed
sealed class HomeFlowState with _$HomeFlowState {
  const factory HomeFlowState.initial() = _Initial;
}

class HomeFlow extends HookConsumerWidget {
  const HomeFlow({super.key, required this.resizableController});

  final ResizableController resizableController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final startPosition = useState(Offset.zero);

    final whiteboardNavigation = ref.watch(WhiteboardNavigation.provider);

    return GestureDetector(
      onHorizontalDragStart: (details) {
        startPosition.value = details.localPosition;
      },
      onHorizontalDragUpdate: (details) {
        final delta = details.localPosition - startPosition.value;
        if (delta.dx > 30) {
          resizableController.show();
        } else if (delta.dx < -30) {
          resizableController.hide();
        }
      },
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity == null) {
          return;
        }
        if (details.primaryVelocity! > 50) {
          resizableController.show();
        } else {
          resizableController.hide();
        }
      },
      child: HomeView(
        onOpenSidebar: () => resizableController.toggle(),
        onOpenDesktop: () => whiteboardNavigation.openWhiteboardEditor(
          context,
          id: WhiteboardId.defaultValue,
          resizableController: resizableController,
        ),
      ),
    );
  }
}
