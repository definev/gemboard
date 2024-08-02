import 'package:flutter/material.dart';
import 'package:position_tag/src/view/position_tag_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_tag_flow.freezed.dart';

@freezed
sealed class PositionTagFlowState with _$PositionTagFlowState {
  const factory PositionTagFlowState.initial() = _Initial;
}

class PositionTagFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PositionTagView();
  }
}