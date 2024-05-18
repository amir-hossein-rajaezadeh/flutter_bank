import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bank/utils/my_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/app_cubit.dart';
import 'utils/my_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isPlatformDark =
        WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
    final initTheme = !isPlatformDark ? darkTheme : lightTheme;
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      // minTextAdapt: true,
      // splitScreenMode: true,
      child: BlocProvider(
        create: (context) => AppCubit(),
        child: ThemeProvider(
          initTheme: initTheme,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: MyRoutes().router,
            title: 'Flutter Bank',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
          ),
        ),
      ),
    );
  }
}
