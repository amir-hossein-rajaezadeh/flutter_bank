import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bank/screens/main_page.dart';
import 'package:flutter_bank/utils/utils.dart';
import 'utils/my_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final initTheme = initThemeDetevtor() ? darkTheme : lightTheme;
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: ThemeProvider(
        initTheme: initTheme,
        child: MaterialApp(
          home: const MainPage(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Bank',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
        ),
      ),
    );
  }
}
