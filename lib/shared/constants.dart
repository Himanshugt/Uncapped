import 'package:flutter/material.dart';

// Colors
const kPrimaryColor = Colors.blue;
// const kSecondaryLightColor = Color(0xFFE4E9F2);
// const kSecondaryDarkColor = Color(0xFF404040);
const kAccentLightColor = Color(0xFFB3BFD7);
const kAccentDarkColor = Colors.pink;
const kGradientDarkColorStart = Color(0xFFED5AE1);
const kGradientDarkColorEnd = Color(0xFF9139FD);
const kBackgroundDarkColor = Color(0xFF0f0c1c);

// const kSurfaceDarkColor = Color(0xFF222225);

// Icon Colors
const kAccentIconLightColor = Color(0xFFECEFF5);
const kAccentIconDarkColor = Color(0xFF303030);
// const kPrimaryIconLightColor = Color(0xFFECEFF5);
// const kPrimaryIconDarkColor = Color(0xFF232323);

// Text Colors
const kBodyTextColorLight = Color(0xFFA1B0CA);
const kBodyTextColorDark = Color(0xFFCCDFE7);
const kTitleTextLightColor = Color(0xFF101112);
const kTitleTextDarkColor = Colors.white;

// const kShadowColor = Color(0xFF364564);

// [Color(0xFFED5AE1),Color(0xFF9139FD),],

// const width = MediaQuery.of(context).size.width;
// const height = MediaQuery.of(context).size.height;

text() {
  return TextStyle(
      fontFamily: 'Wicked',
      fontSize: 50,
      // fontWeight: FontWeight.bold,
      foreground: Paint()
        ..shader = const LinearGradient(
          colors: <Color>[
            Color(0xFFED5AE1),
            Color(0xFF9139FD)
            //add more color here.
          ],
        ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)));
}
