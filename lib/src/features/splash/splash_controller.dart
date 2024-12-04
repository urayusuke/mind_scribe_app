import 'package:get/get.dart';
import 'package:mind_scribe_app/common/services/shared_preferences.dart';
import 'package:mind_scribe_app/src/features/splash/splash_state.dart';
import 'package:mind_scribe_app/src/routes/route_path.dart';

class SplashController extends GetxController {
  final Rx<SplashState> _state = const SplashState().obs;
  SplashState get state => _state.value;

  bool get isLoading => _state.value.isLoading;
  bool get isFirstLaunch => _state.value.isFirstLaunch;

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  Future<void> _init() async {
    // スプラッシュ画面を表示するための遅延
    await Future.delayed(const Duration(seconds: 5));

    // 初回起動かどうかを確認
    final isFirstLaunch =
        SharedPreferencesService.getBool('first_launch', defaultValue: true);

    // 状態を更新
    _state.value = _state.value.copyWith(
      isLoading: false,
      isFirstLaunch: isFirstLaunch,
    );

    // 初回起動フラグを更新
    if (isFirstLaunch) {
      await SharedPreferencesService.setBool('first_launch', false);
    }
  }

  void navigateToNextScreen() {
    if (state.isFirstLaunch) {
      Get.offNamed(RoutePath.post);
      return;
    }

    Get.offNamed(RoutePath.post);
  }
}
