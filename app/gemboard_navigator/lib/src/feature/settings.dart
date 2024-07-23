import 'package:gemboard_navigator/src/router.dart';
import 'package:settings/settings.dart';

class SettingsNavigationImpl implements SettingsNavigation {
  @override
  void pushSettingsFlow() {
    router.push(SettingsRoute().location);
  }
}
