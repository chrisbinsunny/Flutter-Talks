import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;


class Slide3 extends StatefulWidget {
  const Slide3({Key? key}) : super(key: key);

  @override
  State<Slide3> createState() => _Slide3State();
}

class _Slide3State extends State<Slide3> {
  @override
  Widget build(BuildContext context) {
    return Base1(
      children: [
        Text(
            "All time challenges of mobile development",
            style: Theme.of(context).textTheme.headline2
        ),
        SizedBox(
          height: screenHeight(context, mulBy: 0.01),
        ),
        underline(),
        SizedBox(
          height: screenHeight(context, mulBy: 0.1),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    "“To the metal” approaches",
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                        color: Colors.blueGrey,
                    ),
                  ),

                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                      Column(
                        children: [
                          Text(
                            "High-quality apps",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(
                            "“To the metal” approaches",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(

              ),
            ),
          ],
        )
      ],
    );
  }
}
