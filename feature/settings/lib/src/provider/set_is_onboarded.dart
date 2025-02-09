import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'set_is_onboarded.g.dart';

@riverpod
Future<bool> setIsOnboarded(Ref ref, bool value) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.setBool('is_onboarded', value);
}
