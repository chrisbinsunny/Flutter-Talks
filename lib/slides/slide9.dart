import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';


class Slide9 extends StatefulWidget {
  const Slide9({Key? key}) : super(key: key);

  @override
  State<Slide9> createState() => _Slide9State();
}

class _Slide9State extends State<Slide9> {
  @override
  Widget build(BuildContext context) {
    return Base2(
      head: "Natively- Apps for iOS and Android",
      children: [
        SizedBox(
          height: screenHeight(context, mulBy: 0.1),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Compiles directly to native ARM code and\ndoes not use a JavaScript bridge",
                      style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(
                    height: screenHeight(context, mulBy: 0.04),
                  ),
                  Text("60fps, GPU accelerated",
                      style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(
                    height: screenHeight(context, mulBy: 0.04),
                  ),
                  Text("Smooth animations",
                      style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(
                    height: screenHeight(context, mulBy: 0.04),
                  ),
                  Text("Deep platform integrations",
                      style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(
                    height: screenHeight(context, mulBy: 0.04),
                  ),
                  Text("Natural look and feel",
                      style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(
                    height: screenHeight(context, mulBy: 0.04),
                  ),
                  Text("Critical platform differences\n(scrolling, navigation, fonts)",
                      style: Theme.of(context).textTheme.headlineSmall),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
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
                      "assets/images/appRender.png",
                    ),
                  ),
                  SizedBox(
                    height: screenHeight(context, mulBy: 0.04),
                  ),
                  Text("Compiles to ARM native code,\nGPU accelerated graphics",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
