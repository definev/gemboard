// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utils/utils.dart';

import 'ask_io_id.dart';

part 'ask_output.freezed.dart';
part 'ask_output.g.dart';

@freezed
class AskOutput with _$AskOutput, HasId<AskIOId> {
  const factory AskOutput.text(
    String value, {
    required AskIOId id,
  }) = _AskOutputFact;
  const factory AskOutput.image(
    Uri uri, {
    required AskIOId id,
  }) = _AskOutputImage;

  factory AskOutput.fromJson(Map<String, dynamic> json) =>
      _$AskOutputFromJson(json);
}
