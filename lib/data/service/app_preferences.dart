import 'package:airosmobile/core/constants/xcore.dart';
import 'package:airosmobile/data/service/xcore.dart';

abstract  class AppPreferences {
  saveThemeMode(bool isDarkMode);
  bool isDarkMode();

}

class AppPreferenceImp implements AppPreferences{
  final SharedPreferences _sharedPreferences;

  AppPreferenceImp(this._sharedPreferences);

  @override
  bool isDarkMode() {
    return _sharedPreferences.getBool(AppConstants.darkTheme) ?? false;
  }

  @override
  saveThemeMode(bool isDarkMode) async {
    await _sharedPreferences.setBool(AppConstants.darkTheme, isDarkMode);
  }


}