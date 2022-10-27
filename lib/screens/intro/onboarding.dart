// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uncapped/shared/constants.dart';

class Onboaring extends StatefulWidget {
  const Onboaring({super.key});

  @override
  State<Onboaring> createState() => _OnboaringState();
}

class _OnboaringState extends State<Onboaring> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PageView(controller: controller, children: [
      buildPage(context,controller,'assets/images/piggy-bank.png','Collectibles that make you rich','This is a subtext that describes this \nfeature in a better way',
      TextButton(
                onPressed: () {},
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: kGradientDarkColorEnd,
                  ),
                  textAlign: TextAlign.center,
                ))
        ),
      buildPage(context,controller,'assets/images/credit.png','Swift and Secure Transactions','This is a subtext that describes this \nfeature in a better way',
      TextButton(
                onPressed: () {},
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: kGradientDarkColorEnd,
                  ),
                  textAlign: TextAlign.center,
                ))
        ),
        buildPage(context,controller,'assets/images/crowns.png','Live Auction\nLive Action','This is a subtext that describes this \nfeature in a better way',
        TextButton(
                  onPressed: () {},
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: kGradientDarkColorStart,
                    ),
                    textAlign: TextAlign.center,
                  ))
          )
    ]));
  }
}

Widget buildPage(dynamic context,dynamic controller,String image,String text,String subtext,Widget button) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.52,
          width: MediaQuery.of(context).size.width * 0.7,
          child:Image(
            image: AssetImage(image),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
            color: kTitleTextDarkColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 22,
        ),
        Text(
          subtext,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: kBodyTextColorDark,
          ),
          textAlign: TextAlign.center,
        ),
        Spacer(),
        Row(
          children: [
            SizedBox(
              width: 22,
            ),
            SmoothPageIndicator(
                controller: controller, // PageController
                count: 3,
                effect: WormEffect(
                    dotWidth: 10,
                    dotHeight: 4,
                    dotColor: kBodyTextColorDark,
                    activeDotColor:
                        kGradientDarkColorStart), // your preferred effect
                onDotClicked: (index) {}),
            Spacer(),
            button,
            SizedBox(
              width: 5,
            )
          ],
        ),
      ],
    ),
  );
}
