import 'dart:async';

import 'package:let_tutor/configs/app_config.dart';
import 'package:let_tutor/injector/injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  SharedPreferencesService() {
    init();
  }

  late final SharedPreferences _preferences;

  String tokenKey = 'tokenKey';
  String localeKey = 'localeKey';
  String isDarkModeKey = 'isDarkModeKey';
  String isFirstUseKey = 'isFirstUseKey';

  FutureOr<void> init() async {
    _preferences = await SharedPreferences.getInstance();
    Injector.instance.signalReady(this);
  }

  String? get token => _preferences.getString(tokenKey);

  bool get isDarkMode => _preferences.getBool(isDarkModeKey) ?? false;

  bool get isFirstUse => _preferences.getBool(isFirstUseKey) ?? false;

  String get locale => _preferences.getString(localeKey) ?? AppConfig.defaultLocale;

  Future<bool> setIsDarkMode(bool isDarkMode) async {
    return await _preferences.setBool(isDarkModeKey, isDarkMode);
  }

  Future<bool> setIsFirstUse(bool isFirstUse) async {
    return await _preferences.setBool(isFirstUseKey, isFirstUse);
  }

  Future<bool> setLocale(String locale) async {
    return await _preferences.setString(localeKey, locale);
  }

  Future<bool> setToken(String token) async {
    return await _preferences.setString(tokenKey, token);
  }

  getValue({required String key}) {
    return _preferences.get(key);
  }

  Future<bool> setValue({required String key, required String value}) async {
    return await _preferences.setString(key, value);
  }
}
