// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

// Our light/Primary Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      secondary: kAccentLightColor,
    ),
    // backgroundColor: Colors.white,
    // iconTheme: IconThemeData(color: kBodyTextColorLight),
    // primaryIconTheme: IconThemeData(color: kPrimaryIconLightColor),
    textTheme: GoogleFonts.robotoTextTheme().copyWith(
      bodyText1: TextStyle(color: kBodyTextColorLight),
      bodyText2: TextStyle(color: kBodyTextColorLight),
      headline4: TextStyle(color: kTitleTextLightColor),
      headline1: TextStyle(color: kTitleTextLightColor),
    ),
  );
}

// Dark Them
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kBackgroundDarkColor,
    appBarTheme: appBarTheme,
    colorScheme: ColorScheme.light(
      secondary: kAccentDarkColor,
    ),
    // backgroundColor: kBackgroundDarkColor,
    // iconTheme: IconThemeData(color: kBodyTextColorDark),
    // primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
    textTheme: GoogleFonts.robotoTextTheme().copyWith(
      bodyText1: TextStyle(color: kBodyTextColorDark),
      bodyText2: TextStyle(color: kBodyTextColorDark),
      headline4: TextStyle(color: kTitleTextDarkColor),
      headline1: TextStyle(color: kTitleTextDarkColor),
    ),
  );
}

AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent, elevation: 0);