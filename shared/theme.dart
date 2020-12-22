import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

// Our light/Primary Theme
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
    iconTheme: IconThemeData(color: kBodyTextColorLight),
    accentIconTheme: IconThemeData(color: kAccentIconLightColor),
    primaryIconTheme: IconThemeData(color: kPrimaryIconLightColor),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      bodyText1: kBody1.copyWith(color: kPrimaryColor),
      bodyText2: kBody2.copyWith(color: kPrimaryColor),
      headline6: kH3.copyWith(color: kPrimaryColor),
      headline5: kH3.copyWith(color: kPrimaryColor),
      headline4: kH3.copyWith(color: kPrimaryColor),
      headline3: kH3.copyWith(color: kPrimaryColor),
      headline2: kH2.copyWith(color: kPrimaryColor),
      headline1: kH1.copyWith(color: kPrimaryColor),
      button: kButton1,
    ),
  );
}

// Dark Them
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    accentColor: kAccentDarkColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: kTitleTextDarkColor,
      backgroundColor: kAccentDarkColor,
    ),
    scaffoldBackgroundColor: Color(0xFF0D0C0E),
    appBarTheme: appBarTheme,
    colorScheme: ColorScheme.light(
      secondary: kSecondaryDarkColor,
      surface: kSurfaceDarkColor,
    ),
    backgroundColor: kBackgroundDarkColor,
    iconTheme: IconThemeData(color: kBodyTextColorDark),
    accentIconTheme: IconThemeData(color: kAccentIconDarkColor),
    primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: kBody1.copyWith(color: kSecondaryColor),
      bodyText2: kBody2.copyWith(color: kSecondaryColor),
      headline6: kH3.copyWith(color: kSecondaryColor),
      headline5: kH3.copyWith(color: kSecondaryColor),
      headline4: kH3.copyWith(color: kSecondaryColor),
      headline3: kH3.copyWith(color: kSecondaryColor),
      headline2: kH2.copyWith(color: kSecondaryColor),
      headline1: kH1.copyWith(color: kSecondaryColor),
      button: kButton1,
    ),
  );
}

AppBarTheme appBarTheme = AppBarTheme(
  color: Colors.transparent,
  elevation: 0,
);
