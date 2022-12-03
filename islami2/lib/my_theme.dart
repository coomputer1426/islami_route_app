

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyTheme{
  static const Color primaryColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 30,
          fontWeight: FontWeight.bold),
      color: Colors.transparent, elevation: 0,iconTheme: IconThemeData(color: Colors.black)),
    scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        // First  way to change BottomNavigationBar Background Color

        type: BottomNavigationBarType.fixed,

        // selectedIconTheme: ,
        // unselectedIconTheme: ,
        // selectedLabelStyle: ,
        // unselectedLabelStyle:
      ),

    // Second  way to change BottomNavigationBar Background Color
    // ,canvasColor: primaryColor ,
  );

}