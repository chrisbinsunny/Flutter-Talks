import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/base/base3.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';
import '../base/base6.dart';

class AppDetailed1 extends StatefulWidget {
  const AppDetailed1({Key? key}) : super(key: key);

  @override
  State<AppDetailed1> createState() => _AppDetailed1State();
}

class _AppDetailed1State extends State<AppDetailed1> {
  @override
  Widget build(BuildContext context) {
    return Base6(
      image: "assets/images/screen1.png",
      child: Text(
          "What do you see here?",
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: Colors.white,
              fontSize: 55
          ),
      ),
    );
  }
}

class AppDetailed2 extends StatefulWidget {
  const AppDetailed2({Key? key}) : super(key: key);

  @override
  State<AppDetailed2> createState() => _AppDetailed2State();
}

class _AppDetailed2State extends State<AppDetailed2> {
  @override
  Widget build(BuildContext context) {
    return Base6(
      head: "Let’s Diagram the Layout",
      image: "assets/images/screen2.png",
      children: [
        Text("➡️Sub-second reload times",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.white
            )),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("Paint your app to life",
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("Iterate rapidly on features",
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("Test hypotheses quicker than ever",
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("More time to experiment & test features",
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("Single-codebase for faster collab",
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("3X Productivity Gains",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w900
            )),
      ],
    );
  }
}

class AppDetailed3 extends StatefulWidget {
  const AppDetailed3({Key? key}) : super(key: key);

  @override
  State<AppDetailed3> createState() => _AppDetailed3State();
}

class _AppDetailed3State extends State<AppDetailed3> {
  @override
  Widget build(BuildContext context) {
    return Base6(
      head: "High-velocity development",
      image: "assets/images/screen1.png",
      child: Text(
        "What do you see here?",
        style: Theme.of(context).textTheme.displayMedium?.copyWith(
            color: Colors.white,
            fontSize: 55
        ),
      ),
    );
  }
}