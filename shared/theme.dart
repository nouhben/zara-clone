import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

// Our light/Primary Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kBackgroundDarkColor,
    backgroundColor: kBackgroundDarkColor,
    iconTheme: IconThemeData(color: kAccentIconDarkColor),
    primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headline1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, letterSpacing: -0.39, height: 2.2, color: kSecondaryColor),
      headline2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, letterSpacing: -0.02, height: 1.6, color: kSecondaryColor),
      headline3: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: -0.23, height: 1.4, color: kSecondaryColor),
      headline4: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: -0.23, height: 1.4, color: kSecondaryColor),
      headline5: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: -0.23, height: 1.4, color: kSecondaryColor),
      headline6: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: -0.23, height: 1.4, color: kSecondaryColor),
      bodyText1: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: -0.20, height: 2.2, color: kSecondaryColor),
      bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.26, height: 1.2, color: kSecondaryColor),
      button: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: -0.26, height: 1.7, color: kSecondaryColor),
    ),
    colorScheme: ColorScheme.light(
      secondary: kSecondaryLightColor,
    ).copyWith(secondary: kAccentDarkColor),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    appBarTheme: appBarTheme,
    primaryColor: kSecondaryColor,
    scaffoldBackgroundColor: kBackgroundDarkColor,
    backgroundColor: kBackgroundDarkColor,
    iconTheme: IconThemeData(color: kAccentIconDarkColor),
    primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headline1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, letterSpacing: -0.39, height: 22, color: kPrimaryColor),
      headline2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, letterSpacing: -0.02, height: 16, color: kPrimaryColor),
      headline3: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: -0.23, height: 14, color: kPrimaryColor),
      headline4: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: -0.23, height: 14, color: kPrimaryColor),
      headline5: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: -0.23, height: 14, color: kPrimaryColor),
      headline6: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: -0.23, height: 14, color: kPrimaryColor),
      bodyText1: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, letterSpacing: -0.20, height: 22, color: kPrimaryColor),
      bodyText2: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, letterSpacing: -0.26, height: 15, color: kPrimaryColor),
      button: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: -0.26, height: 17, color: kPrimaryColor),
    ), colorScheme: ColorScheme.light(
      secondary: Colors.white,
    ).copyWith(secondary: kAccentLightColor),
  );
}

AppBarTheme appBarTheme = AppBarTheme(
  color: Colors.transparent,
  elevation: 0,
  centerTitle: true,
);
