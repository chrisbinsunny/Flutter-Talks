import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';


class GraphicHorsePower extends StatefulWidget {
  const GraphicHorsePower({Key? key}) : super(key: key);

  @override
  State<GraphicHorsePower> createState() => _GraphicHorsePowerState();
}

class _GraphicHorsePowerState extends State<GraphicHorsePower> {
  @override
  Widget build(BuildContext context) {
    return Base2(
      head: "Graphic Horsepower",
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidth(context, mulBy: 0.4),
              child: Text(
                  "Flutter seamlessly combines user interface widgets with 60fps animated graphics generated in real time, with the same code running on iOS and Android.",
                  style: Theme.of(context).textTheme.bodyMedium
              ),
            ),
            Container(
              width: screenWidth(context, mulBy: 0.4),
              padding: const EdgeInsets.symmetric(
                vertical: 10
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
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
                "assets/gif/robot_half.gif",
              ),
            ),
          ],
        )
      ],
    );
  }
}
