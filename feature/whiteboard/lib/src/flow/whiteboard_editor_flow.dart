import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';
import 'package:whiteboard/src/provider/get_whiteboard_by_id.dart';
import 'package:whiteboard/src/view/whiteboard_view.dart';

class WhiteboardEditorFlow extends ConsumerWidget {
  const WhiteboardEditorFlow({
    super.key,
    required this.id,
  });

  final WhiteboardId id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final whiteboard = ref.watch(getWhiteboardByIdProvider(id: id));
    return switch (whiteboard) {
      AsyncLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
      AsyncData(:final value) => WhiteboardView(
          data: value,
        ),
      AsyncError(:final error, :final stackTrace) => Center(
          child: Text('Error: $error'),
        ),
      _ => SizedBox(),
    };
  }
}
