import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';


class Slide2 extends StatefulWidget {
  const Slide2({Key? key}) : super(key: key);

  @override
  State<Slide2> createState() => _Slide2State();
}

class _Slide2State extends State<Slide2> {
  @override
  Widget build(BuildContext context) {
    return Base2(
      head: "Flutter is Google’s UI Framework",
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidth(context, mulBy: 0.5),
              child: Text(
                  "Helping developers craft high-quality native experiences across multiple platforms in record time.",
                  style: Theme.of(context).textTheme.bodyMedium
              ),
            ),
            Container(
              //width: screenWidth(context, mulBy: 0.4),
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
                "assets/gif/ui1.gif",
              ),
            ),
          ],
        )
      ],
    );
  }
}
