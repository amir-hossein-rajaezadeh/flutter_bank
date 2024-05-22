import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

Alignment getDragStartPositionAlignment(
  double xPosition,
  double yPosition,
  double width,
  double height,
) {
  if (xPosition > width / 2) {
    return yPosition > height / 2 ? Alignment.bottomRight : Alignment.topRight;
  } else {
    return yPosition > height / 2 ? Alignment.bottomLeft : Alignment.topLeft;
  }
}
bool isDarkModeEnabled(BuildContext context) {
    int brightness =
        ThemeModelInheritedNotifier.of(context).theme.brightness.index;

    bool isDarkModeEnabled = brightness == 0;
    return isDarkModeEnabled;

}
bool initThemeDetevtor(){
   final onDarkMode =
      WidgetsBinding.instance.window.platformBrightness == Brightness.dark;

  return onDarkMode;
}