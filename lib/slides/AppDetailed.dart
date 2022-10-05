import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/base/base3.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';
import '../base/base6.dart';
import '../slideSelector.dart';

class AppDetailed1 extends StatefulWidget {
  const AppDetailed1({Key? key}) : super(key: key);

  @override
  State<AppDetailed1> createState() => _AppDetailed1State();
}

class _AppDetailed1State extends State<AppDetailed1> {
  @override
  Widget build(BuildContext context) {
    return Base6(
      image: "assets/images/screen1.png",
      child: Text(
          "What do you see here?",
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: Colors.white,
              fontSize: 55
          ),
      ),
    );
  }
}

class AppDetailed2 extends StatefulWidget {
  const AppDetailed2({Key? key}) : super(key: key);

  @override
  State<AppDetailed2> createState() => _AppDetailed2State();
}

class _AppDetailed2State extends State<AppDetailed2> {
  @override
  Widget build(BuildContext context) {
    return Base6(
      head: "Let’s Diagram the Layout",
      image: "assets/images/screen2.png",
      children: [
        Text("➡️  Look for rows and columns",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontSize: 26
            )),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("➡️  Is there a grid?",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
                fontSize: 26
            )),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("➡️  Any overlapping elements?",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
                fontSize: 26
            )),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("➡️  Do we need tabs?",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
                fontSize: 26
            )),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("➡️  Padding, alignment or borders needed?",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
                fontSize: 26
            )),
      ],
    );
  }
}

class AppDetailed3 extends StatefulWidget {
  const AppDetailed3({Key? key}) : super(key: key);

  @override
  State<AppDetailed3> createState() => _AppDetailed3State();
}

class _AppDetailed3State extends State<AppDetailed3> {
  @override
  Widget build(BuildContext context) {
    return SlideSelector(
      child: Scaffold(
          floatingActionButton: FloatingActionButton.large(
            onPressed: (){
              window.open('https://flutter.dev', 'new tab');
            },
            child: const FlutterLogo(
              size: 50,
            ),
          ),

          body: SizedBox(
            height: screenHeight(context),
            width: screenWidth(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Image.asset(
                    "assets/images/screen3.png",
                    //fit: BoxFit.fitHeight,
                    //height: screenHeight(context),
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    "assets/images/screen4.png",
                    //fit: BoxFit.fitHeight,
                    //height: screenHeight(context),
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}