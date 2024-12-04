import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mind_scribe_app/src/features/post/post_screen.dart';
import 'package:mind_scribe_app/src/features/splash/splash_screen.dart';
import 'package:mind_scribe_app/src/routes/route_path.dart';

class Routes {
  static final pages = [
    GetPage(
      name: RoutePath.initialRoute,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: RoutePath.splash,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: RoutePath.post,
      page: () => PostScreen(),
    ),
  ];
}
