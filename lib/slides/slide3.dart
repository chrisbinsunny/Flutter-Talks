import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';


class Slide3 extends StatefulWidget {
  const Slide3({Key? key}) : super(key: key);

  @override
  State<Slide3> createState() => _Slide3State();
}

class _Slide3State extends State<Slide3> {
  @override
  Widget build(BuildContext context) {
    return Base2(
      head: "All time challenges of mobile development",
      children: [
        SizedBox(
          height: screenHeight(context, mulBy: 0.1),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "      “To the metal” approaches",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Colors.blueGrey,
                  ),
                ),
                SizedBox(
                  height: screenHeight(context, mulBy: 0.04),
                ),
                const ListContent(head: "High-quality apps", sub: "Platform and system integrations", check: true),
                const ListContent(head: "High-performance UIs", sub: "Native code, GPU accelerated", check: true),
                const ListContent(head: "Must fund two apps", sub: "Two teams, codebases, & investments", check: false),
                const ListContent(head: "Inconsistent brand, features", sub: "Different across devices & OEMs", check: false),
              ],
            ),
            //Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "      “Cross platform” approaches",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Colors.blueGrey,
                  ),
                ),
                SizedBox(
                  height: screenHeight(context, mulBy: 0.04),
                ),
                const ListContent(head: "Fast development", sub: "Same codebase, fast deployment", check: true),
                const ListContent(head: "Portability, reach", sub: "Single codebase", check: true),
                const ListContent(head: "Poor Performance", sub: "Slow, jerky, unpredictable", check: false),
                const ListContent(head: "Non-Native Look/Feel, features", sub: "Users can tell the difference", check: false),
              ],
            ),
          ],
        )
      ],
    );
  }
}
