import 'package:flutter/material.dart';
import 'package:flutter_bank/utils/my_colors.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  tabBarTheme: TabBarTheme(
    indicator: UnderlineTabIndicator(
      borderSide: const BorderSide(color: MyColors.darkPurple, width: 4.0),
      borderRadius: BorderRadius.circular(40),
    ),
    labelColor: MyColors.darkPurple,
    unselectedLabelColor: Colors.grey.shade400,
    unselectedLabelStyle: TextStyle(color: Colors.grey.shade400, fontSize: 30),
    dividerColor: Colors.transparent,
    indicatorSize: TabBarIndicatorSize.label,
    labelStyle: const TextStyle(
        fontSize: 12, letterSpacing: 1.3, fontWeight: FontWeight.w500),
  ),
  primaryColor: const Color(0xFFfafafa),
  scaffoldBackgroundColor: MyColors.white,
  iconTheme: const IconThemeData(color: MyColors.darkPurple),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color.fromRGBO(43, 33, 25, 1),
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
    tabBarTheme: TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: const BorderSide(
          color: MyColors.darkPurple,
          width: 4.0,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      labelColor: Colors.white,
      dividerColor: Colors.transparent,
      indicatorSize: TabBarIndicatorSize.label,
    ),
    scaffoldBackgroundColor: MyColors.backgroundColor,
    iconTheme: const IconThemeData(color: MyColors.darkPurple),
    primaryColor: Colors.amber);
