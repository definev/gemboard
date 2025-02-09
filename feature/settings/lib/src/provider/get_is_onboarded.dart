import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'get_is_onboarded.g.dart';

@riverpod
Future<bool> getIsOnboarded(Ref ref) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('is_onboarded') ?? false;
}
