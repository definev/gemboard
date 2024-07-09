import 'package:flutter/material.dart';
import 'package:home/src/view/home_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_flow.freezed.dart';

@freezed
sealed class HomeFlowState with _$HomeFlowState {
  const factory HomeFlowState.initial() = _Initial;
}

class HomeFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeView();
  }
}