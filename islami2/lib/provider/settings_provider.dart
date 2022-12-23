import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.light;
  // String currentLanguage = App
  String currentLang = "en";
// observable pattern
  void changeTheme(ThemeMode newMode){
    currentTheme = newMode;
    notifyListeners();
  }
  void changeLocale(String newLocale){
    currentLang = newLocale;
    notifyListeners();
  }

  String getMainBackgroundImage(){
    return currentTheme==ThemeMode.dark?
    "assets/images/main_background_dark.png":"assets/images/background.png";
  }
  bool isDarkMode(){
    return (currentTheme==ThemeMode.dark);
  }
  // bool isEnglish(){
  //   return (currentLang==)
  // }
}