import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:settings/src/view/settings_view.dart';

part 'settings_flow.freezed.dart';

@freezed
sealed class SettingsFlowState with _$SettingsFlowState {
  const factory SettingsFlowState.initial() = _Initial;
}

class SettingsFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SettingsView();
  }
}