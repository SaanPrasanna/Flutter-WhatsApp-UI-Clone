import 'package:flutter/material.dart';

import 'constants.dart';

// Light/Primary Theme | Default Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme,
    primaryColor: kPrimaryColor,
    accentColor: kAccentLightColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      secondary: kSecondaryLightColor,
      // on light theme surface = Colors.white by default
    ),
    backgroundColor: Colors.white,
  );
}


AppBarTheme appBarTheme = AppBarTheme(color: kPrimaryColor, elevation: 0);
