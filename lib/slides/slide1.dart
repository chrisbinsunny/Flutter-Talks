import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';

class Slide1 extends StatefulWidget {
  const Slide1({Key? key}) : super(key: key);

  @override
  State<Slide1> createState() => _Slide1State();
}

class _Slide1State extends State<Slide1> {
  @override
  Widget build(BuildContext context) {
    return Base1(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Flutter",
            style: Theme.of(context).textTheme.headline1
          ),
          Text(
              "Building beautiful native apps in record time",
              style: Theme.of(context).textTheme.headline2
          ),
        ],
      ),
    );
  }
}
