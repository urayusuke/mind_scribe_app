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