// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rive/rive.dart' hide LinearGradient, RadialGradient;
import 'package:uncapped/screens/intro/onboarding.dart';
import 'package:uncapped/shared/constants.dart';
import '../../shared/gradient_text.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: RiveAnimation.asset(
              'assets/rive/test1.riv',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.54,
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Collect',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111E6C),
                      ),
                    ),
                    Row(
                      children: const [
                        GradientText('Timeless ',
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.w900,
                            ),
                            gradient: LinearGradient(colors: [
                              kGradientDarkColorStart,
                              Color(0xFF710193)
                            ])),
                        Text(
                          'Digital',
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF111E6C),
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Artworks',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111E6C),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Buy, sell, and discover exclusive',
                      style: TextStyle(
                        fontSize: 16.5,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111E6C),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'digital assets',
                      style: TextStyle(
                        fontSize: 16.5,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111E6C),
                      ),
                    )
                  ],
                ),
              )),
          Align(
            alignment: FractionalOffset(0.5, 0.96),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.transparent)),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnboaringOne()));
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 500),
                          transitionsBuilder:
                              (context, animation, animationTime, child) {
                            return ScaleTransition(
                                alignment: FractionalOffset(0.5, 0.9),
                                scale: animation, child: child);
                          },
                          pageBuilder: (context, animation, animationTime){
                            return Onboaring();
                          }
                          ));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(
                      colors: [kGradientDarkColorStart, Color(0xFF710193)],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    child: Text('Discover',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        )),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
