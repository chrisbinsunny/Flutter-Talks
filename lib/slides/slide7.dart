import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/base/base3.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';

class Slide7 extends StatefulWidget {
  const Slide7({Key? key}) : super(key: key);

  @override
  State<Slide7> createState() => _Slide7State();
}

class _Slide7State extends State<Slide7> {
  @override
  Widget build(BuildContext context) {
    return Base3(
      head: "Flutter is Google’s UI Framework",
      image: "assets/gif/hotR.gif",
      children: [
        Text("Sub-second reload times",
            style: Theme.of(context).textTheme.headlineSmall),
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
