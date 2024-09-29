import 'l10n.dart';

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get home => 'ホーム';

  @override
  String get post => '投稿';

  @override
  String get description => '自分が思っていることを書いてください。何を書いても大丈夫です';

  @override
  String get spell => '綴る';

  @override
  String get sad => '悲しい';

  @override
  String get neutral => '普通';

  @override
  String get happy => '楽しい';

  @override
  String get whiteSpace => '';
}
