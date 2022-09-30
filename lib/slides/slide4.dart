import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';


class Slide4 extends StatefulWidget {
  const Slide4({Key? key}) : super(key: key);

  @override
  State<Slide4> createState() => _Slide4State();
}

class _Slide4State extends State<Slide4> {
  @override
  Widget build(BuildContext context) {
    return Base2(
      head: "All time challenges of mobile development",
      children: [
        SizedBox(
          width: screenWidth(context, mulBy: 0.6),
          child: RichText(
            text: TextSpan(
              text: "Flutter combines",
              style: Theme.of(context).textTheme.headline3,
              children: [
                TextSpan(
                  text: "native performance and quality "
                ),
                TextSpan(
                    text: "with "
                ),
                TextSpan(
                    text: "high-velocity development "
                ),
                TextSpan(
                    text: "and "
                ),
                TextSpan(
                    text: "multi-platform reach"
                ),
                TextSpan(
                    text: "."
                ),
              ]
            ),
          ),
        )
      ],
    );
  }
}
