import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mind_scribe_app/src/features/splash/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  SplashScreen({super.key}) {
    // コントローラーを初期化
    Get.put(SplashController(), permanent: false);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Obx(
          () {
            if (!controller.isLoading) {
              // ローディングが終わったら次の画面に遷移
              WidgetsBinding.instance.addPostFrameCallback((_) {
                controller.navigateToNextScreen();
              });
            }

            return Lottie.asset('assets/splash.json');
          },
        ),
      ),
    );
  }
}
