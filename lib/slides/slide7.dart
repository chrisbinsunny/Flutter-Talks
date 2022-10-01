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
      image: "assets/gif/ui1.gif",
      children: [
        SizedBox(
          width: screenWidth(context, mulBy: 0.4),
          child: Text(
              "Helping developers craft high-quality native experiences across multiple platforms in record time.",
              style: Theme.of(context).textTheme.bodyMedium
          ),
        ),

      ],
    );
  }
}
