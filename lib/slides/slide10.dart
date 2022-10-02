import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';


class Slide10 extends StatefulWidget {
  const Slide10({Key? key}) : super(key: key);

  @override
  State<Slide10> createState() => _Slide10State();
}

class _Slide10State extends State<Slide10> {
  @override
  Widget build(BuildContext context) {
    return Base2(
      head: "Built by Google\nUsed by Google, developers and companies around the world",
      children: [
        SizedBox(
          height: screenHeight(context, mulBy: 0.1),
        ),
        Center(
          child: Container(
            width: screenWidth(context, mulBy: 0.4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: Offset(0, 3)
                )
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              "assets/images/companies.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
