import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'get_is_onboarded.g.dart';

@riverpod
Future<bool> getIsOnboarded(GetIsOnboardedRef ref) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('is_onboarded') ?? false;
}
