import 'package:gemboard_navigator/src/router.dart';
import 'package:home/home.dart';

class HomeNavigationImpl implements HomeNavigation {
  @override
  void goToHome() {
    router.go(HomeGreetingRoute.location);
  }
}
