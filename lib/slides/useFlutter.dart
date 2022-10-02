import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';


class UseFlutter extends StatefulWidget {
  const UseFlutter({Key? key}) : super(key: key);

  @override
  State<UseFlutter> createState() => _UseFlutterState();
}

class _UseFlutterState extends State<UseFlutter> {
  @override
  Widget build(BuildContext context) {
    return Base2(
      head: "Four ways to use Flutter today",
      children: [

        SizedBox(
          height: screenHeight(context, mulBy: 0.1),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(
              width: screenWidth(context, mulBy: 0.2),
              child: Text("Start a new app from scratch",
                  style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: screenWidth(context, mulBy: 0.2),
              child: Text("Prototype a new app idea",
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: screenWidth(context, mulBy: 0.2),
              child: Text("Bring your app to the the other platform",
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: screenWidth(context, mulBy: 0.2),
              child: Text("Use Flutter for a part of your app",
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenHeight(context, mulBy: 0.05),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: screenWidth(context, mulBy: 0.2),
              child: Text("Build your new idea in Flutter, and reach both iOS and Android at the same time.",
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: screenWidth(context, mulBy: 0.2),
              child: Text("Use Flutter to test out an app concept or idea in record time.",
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: screenWidth(context, mulBy: 0.2),
              child: Text("You already have an iOS or Android app? Use Flutter to build for the other platform. Combine codebases when you’ve proven your Flutter app.",
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: screenWidth(context, mulBy: 0.2),
              child: Text("Test Flutter in production with one or two screens in your existing app.",
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
