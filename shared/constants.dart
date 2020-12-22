import 'package:flutter/material.dart';

import 'size_config.dart';

// PRIMARY
const kPrimaryColor = Colors.black;
const kSecondaryColor = Colors.white;
const kFeedbackColor = Color(0xffFF7776);

// SECONDARY
const kSecondaryLightColor = Color(0xFFE4E9F2);
const kSecondaryDarkColor = Color(0xFF404040);
const kSecondaryFeedbackColor = Color(0xffFF7776);

// ACCENT
const kAccentLightColor = Color(0xFFB3BFD7);
const kAccentDarkColor = Color(0xFF4E4E4E);
const kAccentFeedbackColor = Color(0xffFF7776);

const kBackgroundDarkColor = Color(0xFF3A3A3A);
const kSurfaceDarkColor = Color(0xFF222225);

// ICON COLORS
const kAccentIconLightColor = Color(0xFFECEFF5);
const kAccentIconDarkColor = Color(0xFF303030);
const kPrimaryIconLightColor = Color(0xFFECEFF5);
const kPrimaryIconDarkColor = Color(0xFF232323);

// TEXT COLORS
const kBodyTextColorLight = Colors.black;
const kBodyTextColorDark = Colors.white;
const kTitleTextLightColor = Color(0xFF101112);
const kTitleTextDarkColor = Colors.white;

// TEXT STYLES
const kH1 = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, letterSpacing: -0.39, height: 22);
const kH2 = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, letterSpacing: -0.02, height: 16);
const kH3 = TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: -0.23, height: 14);
const kBody1 = TextStyle(fontSize: 12, fontWeight: FontWeight.w300, letterSpacing: -0.20, height: 22);
const kBody2 = TextStyle(fontSize: 12, fontWeight: FontWeight.w600, letterSpacing: -0.26, height: 15);
const kButton1 = TextStyle(fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: -0.26, height: 17);
const kButton2 = TextStyle(fontSize: 12, fontWeight: FontWeight.normal, letterSpacing: -0.23, height: 14);
//Shadow color
const kShadowColor = Color(0xFF364564);

const Duration kAnimationDuration = Duration(milliseconds: 200);

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
