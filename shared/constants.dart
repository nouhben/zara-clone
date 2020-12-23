import 'package:flutter/material.dart';

import 'size_config.dart';

// Colors
const kPrimaryColor = Colors.black;
const kSecondaryColor = Colors.white;
const kFeedbackColor = Color(0xffFF7776);

// SECONDARY
const kSecondaryLightColor = Color(0xFFE4E9F2);
const kSecondaryDarkColor = Colors.black;
const kSecondaryFeedbackColor = Color(0xffFF7776);

// ACCENT
const kAccentLightColor = Colors.white;
const kAccentDarkColor = Colors.black;
const kAccentFeedbackColor = Color(0xffFF7776);

const kBackgroundDarkColor = Colors.black;
const kSurfaceDarkColor = Colors.black;

// ICON COLORS
const kAccentIconLightColor = Colors.white;
const kAccentIconDarkColor = Colors.black;
const kPrimaryIconLightColor = Colors.white;
const kPrimaryIconDarkColor = Colors.black;

// TEXT COLORS
const kBodyTextColorLight = Colors.black;
const kBodyTextColorDark = Colors.white;
const kTitleTextColorLight = Colors.black;
const kTitleTextColorDark = Colors.white;

//Shadow color
const kShadowColor = Color(0xFF364564);

const Duration kAnimationDuration = Duration(milliseconds: 200);
//TEXT STYLE
final kHeadline1 = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, letterSpacing: -0.39, height: 2.2, color: kSecondaryColor);
final kHeadline2 = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, letterSpacing: -0.02, height: 1.6, color: kSecondaryColor);
final kHeadline3 = TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: -0.23, height: 1.4, color: kSecondaryColor);
final kHeadline4 = TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: -0.23, height: 1.4, color: kSecondaryColor);
final kHeadline5 = TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: -0.23, height: 1.4, color: kSecondaryColor);
final kHeadline6 = TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: -0.23, height: 1.4, color: kSecondaryColor);
final kBodyText1 = TextStyle(fontSize: 12, fontWeight: FontWeight.w300, letterSpacing: -0.20, height: 2.2, color: kSecondaryColor);
final kBodyText2 = TextStyle(fontSize: 12, fontWeight: FontWeight.w600, letterSpacing: -0.26, height: 1.5, color: kSecondaryColor);
final kButton = TextStyle(fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: -0.26, height: 1.7, color: kSecondaryColor);
//INPUTS
final TextStyle kHeadingStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: SizeConfig.getProportionateScreenWidth(28),
);
final InputDecoration kOtpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: SizeConfig.getProportionateScreenWidth(15)),
  enabledBorder: _outlineInputBorder(),
  focusedBorder: _outlineInputBorder(),
  border: _outlineInputBorder(),
);
OutlineInputBorder _outlineInputBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: kPrimaryColor),
    );

//FORM ERRORs
final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.-_]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password too short";
const String kMatchPassError = "Passwords do not match";
const String kNameNullError = "Please Enter your full name";
const String kAddressNullError = "Please Enter your address";
const String kPhoneNullError = "Please Enter your phone number";
