import 'dart:convert';

import 'package:ask_board/ask_board.dart';
import 'package:design_system/design_system.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home/home.dart';

part 'router.g.dart';
part 'routes/board.id.dart';
part 'routes/home.dart';
part 'routes/root.dart';

final router = GoRouter(
  routes: $appRoutes,
  initialLocation: HomeRoute.location,
  extraCodec: GenitExtraCodec(),
);

class GenitExtraCodec extends Codec<Object?, Map<String, dynamic>?> {
  const GenitExtraCodec();

  @override
  Converter<Map<String, dynamic>?, Object?> get decoder =>
      const GenitExtraDecoder();

  @override
  Converter<Object?, Map<String, dynamic>?> get encoder =>
      const GenitExtraEncoder();
}

class GenitExtraDecoder extends Converter<Map<String, dynamic>?, Object?> {
  const GenitExtraDecoder();

  @override
  Object? convert(Map<String, dynamic>? input) {
    if (input == null) return null;
    final type = input['_extra_type'] as String?;
    final data = input['data'] as Map<String, dynamic>?;
    if (type == 'AskBoard') return AskBoard.fromJson(data!);
    return null;
  }
}

class GenitExtraEncoder extends Converter<Object?, Map<String, dynamic>?> {
  const GenitExtraEncoder();

  @override
  Map<String, dynamic>? convert(Object? input) {
    if (input == null) return null;
    if (input is AskBoard) {
      return {
        '_extra_type': 'AskBoard',
        'data': input.toJson(),
      };
    }
    return {};
  }
}
