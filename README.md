# mind_scribe_app

## 外部ライブラリ
### intl
- intlを使って、日本語設定
- intl_jaに追加したい日本語を記入
```
"home": "ホーム"
```
- `flutter gen-l10n`を実行で反映
- `L10n.of(context)!.home`で使用可能

### Freezed
基本的な書き方
```
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @Default(true) bool isLoading,
    @Default(true) bool isFirstLaunch,
  }) = _SplashState;
}
```

`flutter pub run build_runner build --delete-conflicting-outputs` を実行することでモデルが生成される
`--delete-conflicting-outputs`は既存のモデルを削除する
これをすることによって、既存のモデルを修正しても反映される