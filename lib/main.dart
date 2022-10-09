// ignore_for_file: unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uncapped/screens/intro/landing_page.dart';
import 'package:uncapped/shared/theme.dart';

import 'shared/gradient_text.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //to hide status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.dark,
      home: LandingPage(),
    );
  }
}

// class linear extends StatelessWidget {
//   const linear({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(style:TextStyle(
//         fontSize: 30.0,
//         fontWeight: FontWeight.bold,
//         foreground: Paint()
//           ..shader = LinearGradient(
//             colors: <Color>[
//               const Color(0xFFED5AE1),
//               const Color(0xFF9139FD)
//               //add more color here.
//             ],
//           ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)));
//   }
// }





