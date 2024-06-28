// ignore_for_file: invalid_annotation_target

import 'package:ask_board/src/domain/model/ask_io_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ask_input.freezed.dart';
part 'ask_input.g.dart';

@freezed
sealed class AskInput with _$AskInput {
  const factory AskInput.fact(String value) = _Fact;
  const factory AskInput.context(String value) = _Context;
  const factory AskInput.image(Uri uri) = _Image;
  const factory AskInput.instruction(String value) = _Instruction;

  // Ref types
  const factory AskInput.factRef({
    @JsonKey(readValue: AskIOId.readValue) required AskIOId askIOId,
  }) = _FactRef;
  const factory AskInput.contextRef({
    @JsonKey(readValue: AskIOId.readValue) required AskIOId askIOId,
  }) = _ContextRef;
  const factory AskInput.imageRef({
    @JsonKey(readValue: AskIOId.readValue) required AskIOId askIOId,
  }) = _ImageRef;
  const factory AskInput.instructionRef({
    @JsonKey(readValue: AskIOId.readValue) required AskIOId askIOId,
  }) = _InstructionRef;

  factory AskInput.fromJson(Map<String, dynamic> json) =>
      _$AskInputFromJson(json);
}
