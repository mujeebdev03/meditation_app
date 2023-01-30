import 'package:get/route_manager.dart';
import 'package:med_app_/src/app/on_boarding_screen.dart';
import 'package:med_app_/src/modules/home/screens/home_screen.dart';

import '../splash_screen.dart';

class AppRouter {
  static const splashScreen = '/';
  static const onBoardingScreen = '/onBoarding';
  static const homeScreen = '/home';

  static final List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: onBoardingScreen, page: () => const OnBoardingScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
  ];
}
