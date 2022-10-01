import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/base/base3.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';

class Slide8 extends StatefulWidget {
  const Slide8({Key? key}) : super(key: key);

  @override
  State<Slide8> createState() => _Slide8State();
}

class _Slide8State extends State<Slide8> {
  @override
  Widget build(BuildContext context) {
    return Base3(
      head: "Flexibility and Control for\nbeautiful UIs",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/gif/ui2.gif",
          ),
          Image.asset(
            "assets/gif/ui3.gif",
          )
        ],
      ),
      image: "assets/gif/hotR.gif",
      children: [
        Text("Control every pixel on the screen",
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: screenHeight(context, mulBy: 0.04),
        ),
        Text("Make your brand come to life",
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: screenHeight(context, mulBy: 0.04),
        ),
        Text("Never say \"no\" to your designer",
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: screenHeight(context, mulBy: 0.04),
        ),
        Text("Stand out in the marketplace",
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: screenHeight(context, mulBy: 0.04),
        ),
        Text("Win awards with beautiful UI",
            style: Theme.of(context).textTheme.headlineSmall),
      ],
    );
  }
}
