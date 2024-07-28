import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @Default(true) bool isLoading,
    @Default(true) bool isFirstLaunch,
  }) = _SplashState;
}