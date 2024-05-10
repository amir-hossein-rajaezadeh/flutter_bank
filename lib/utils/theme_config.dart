import 'package:flutter/material.dart';
import 'package:flutter_bank/utils/my_colors.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  tabBarTheme: TabBarTheme(
    indicator: const UnderlineTabIndicator(),
    labelColor: Colors.black,
    unselectedLabelColor: Colors.grey.shade400,
    unselectedLabelStyle: TextStyle(color: Colors.grey.shade400, fontSize: 10),
    dividerColor: Colors.transparent,
    indicatorSize: TabBarIndicatorSize.label,
    labelStyle: const TextStyle(
        fontSize: 12, letterSpacing: 1.3, fontWeight: FontWeight.w500),
  ),
  primaryColor: const Color(0xFFfafafa),
  scaffoldBackgroundColor: MyColors.white,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFF2b2119),
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(),
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey.shade800,
      unselectedLabelStyle:
          TextStyle(color: Colors.grey.shade800, fontSize: 10),
      dividerColor: Colors.transparent,
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: const TextStyle(
          fontSize: 12, letterSpacing: 1.3, fontWeight: FontWeight.w500),
    ),
    iconTheme: const IconThemeData(color: Colors.black),
    primaryColor: Colors.amber);
