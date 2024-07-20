import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mind_scribe_app/main.dart';
import 'package:mind_scribe_app/src/features/splash/splash_screen.dart';
import 'package:mind_scribe_app/src/routes/route_path.dart';

class Routes {
  static final pages = [
    GetPage(
      name: RoutePath.initialRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RoutePath.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RoutePath.home,
      page: () => const MyHomePage(),
    ),
  ];
}
