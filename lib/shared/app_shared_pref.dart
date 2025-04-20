import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPref {
  static const localeKey = 'app_locale';
  void setAppLocale(String locale) async {
    SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    sharedPrefs.setString(localeKey, locale);
  }

  Future<String> getAppLocale() async {
    SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    return sharedPrefs.getString(localeKey) ?? 'en';
  }
}
