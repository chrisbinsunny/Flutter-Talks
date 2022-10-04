import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';


class KeyComponent extends StatefulWidget {
  const KeyComponent({Key? key}) : super(key: key);

  @override
  State<KeyComponent> createState() => _KeyComponentState();
}

class _KeyComponentState extends State<KeyComponent> {
  @override
  Widget build(BuildContext context) {
    return Base2(
      head: "Key component of the Google Developer family",
      children: [
        SizedBox(
          height: screenHeight(context,mulBy: 0.05),
        ),
        Text(
            "Flutter offers a portable, high-quality UI toolkit, and a fast, expressive way to build native app UIs.",
            style: Theme.of(context).textTheme.bodyMedium
        ),
        SizedBox(
          height: screenHeight(context,mulBy: 0.2),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/firebase.png",
              height: screenHeight(context, mulBy: 0.2),
            ),
            FlutterLogo(
              size: 180,
            ),
            Image.asset(
              "assets/icons/material.png",
              height: screenHeight(context, mulBy: 0.2),
            ),
            Image.asset(
              "assets/icons/gcp.png",
              height: screenHeight(context, mulBy: 0.2),
            ),
          ],
        )
      ],
    );
  }
}
