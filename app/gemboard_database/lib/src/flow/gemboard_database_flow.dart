import 'package:flutter/material.dart';
import 'package:gemboard_database/src/view/gemboard_database_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemboard_database_flow.freezed.dart';

@freezed
sealed class GemboardDatabaseFlowState with _$GemboardDatabaseFlowState {
  const factory GemboardDatabaseFlowState.initial() = _Initial;
}

class GemboardDatabaseFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GemboardDatabaseView();
  }
}