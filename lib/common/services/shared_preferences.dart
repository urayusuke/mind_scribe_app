import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static SharedPreferences? _prefs;
  
   // SharedPreferencesのインスタンスを初期化
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // 文字列を保存
  static Future<bool> setString(String key, String value) async {
    return await _prefs?.setString(key, value) ?? false;
  }

  // 文字列を取得
  static String getString(String key, {String defaultValue = ''}) {
    return _prefs?.getString(key) ?? defaultValue;
  }

  // bool値を保存
  static Future<bool> setBool(String key, bool value) async {
    return await _prefs?.setBool(key, value) ?? false;
  }

  // bool値を取得
  static bool getBool(String key, {bool defaultValue = false}) {
    return _prefs?.getBool(key) ?? defaultValue;
  }

  // int値を保存
  static Future<bool> setInt(String key, int value) async {
    return await _prefs?.setInt(key, value) ?? false;
  }

  // int値を取得
  static int getInt(String key, {int defaultValue = 0}) {
    return _prefs?.getInt(key) ?? defaultValue;
  }

  // double値を保存
  static Future<bool> setDouble(String key, double value) async {
    return await _prefs?.setDouble(key, value) ?? false;
  }

  // double値を取得
  static double getDouble(String key, {double defaultValue = 0.0}) {
    return _prefs?.getDouble(key) ?? defaultValue;
  }

  // キーを削除
  static Future<bool> remove(String key) async {
    return await _prefs?.remove(key) ?? false;
  }

  // すべてのデータをクリア
  static Future<bool> clear() async {
    return await _prefs?.clear() ?? false;
  }

  // キーの存在確認
  static bool containsKey(String key) {
    return _prefs?.containsKey(key) ?? false;
  }
}
