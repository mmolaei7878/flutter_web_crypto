import 'package:get/get.dart';
import 'package:web_exam/view/about_screen.dart';

import '../view/home_screen.dart';

class RouteNames {
  static const String homeScreenRouteName = '/home';
  static const String aboutScreenRouteName = '/about';
}

class AppRoutes {
  static final pageList = [
    GetPage(name: RouteNames.homeScreenRouteName, page: () => HomeScreen()),
    GetPage(name: RouteNames.aboutScreenRouteName, page: () => AboutScreen()),
  ];
}
