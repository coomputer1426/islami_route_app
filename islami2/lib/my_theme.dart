

import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

class MyTheme{
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color yellow = Color(0xFFFACC1D);
  static const Color darkPrimary = Color(0xFF141A2E);

  static final ThemeData lightTheme = ThemeData(primaryColor: lightPrimary,

    textTheme: TextTheme(headline6: TextStyle(fontSize: 22, color: Colors.black),
        headline4: TextStyle(fontSize: 28, color: Colors.black),
        subtitle2: TextStyle(fontSize: 14, color: Colors.black)),
    cardColor: Colors.white,
    appBarTheme: const AppBarTheme(centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 30,
          fontWeight: FontWeight.bold),
      color: Colors.transparent, elevation: 0,iconTheme: IconThemeData(color: Colors.black)),
    scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        // First  way to change BottomNavigationBar Background Color

        // type: BottomNavigationBarType.fixed,

        // selectedIconTheme: ,
        // unselectedIconTheme: ,
        // selectedLabelStyle: ,
        // unselectedLabelStyle:
      ),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(18),
          topRight: Radius.circular(18))))

    // Second  way to change BottomNavigationBar Background Color
    // ,canvasColor: primaryColor ,
  );
  static final ThemeData darkTheme = ThemeData(
    textTheme: const TextTheme(headline6: TextStyle(fontSize: 22, color: Colors.white),
      headline4: TextStyle(fontSize: 28, color: Colors.white),
      subtitle2: TextStyle(fontSize: 14, color: Colors.white)
    ),
    accentColor: yellow,
    cardColor: darkPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: darkPrimary,
    // bottomAppBarTheme: BottomAppBarTheme(color: yellow),
    appBarTheme: const AppBarTheme(centerTitle: true,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 30,
      fontWeight: FontWeight.bold),
      color: Colors.transparent, elevation: 0,
      iconTheme: IconThemeData(color: Colors.white)),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        // backgroundColor: darkPrimary,

      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(color: yellow, size: 36),
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 24),
      selectedLabelStyle: TextStyle(color: yellow),
      selectedItemColor: yellow,
        // First  way to change BottomNavigationBar Background Color

        // type: BottomNavigationBarType.fixed,

        // selectedIconTheme: ,
        // unselectedIconTheme: ,
        // selectedLabelStyle: ,
        // unselectedLabelStyle:
      ),
      bottomSheetTheme: const BottomSheetThemeData(backgroundColor: darkPrimary, shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(18),
          topRight: Radius.circular(18))))
    // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: darkPrimary),

    // Second  way to change BottomNavigationBar Background Color
    // ,canvasColor: primaryColor ,
  );

}