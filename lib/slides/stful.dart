import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';
import '../base/base5.dart';

class Stateful extends StatefulWidget {
  const Stateful({Key? key}) : super(key: key);

  @override
  State<Stateful> createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  @override
  Widget build(BuildContext context) {
    return const Base5(
      head: "Stateful Widget",
      children: [
        "Dynamic widget which has its own properties",
        "Those property is known as state of the widget",
        "The state of the widget can be changed by user input, any operation or other widget’s state change",
        "setState() method is used to change the state",
        "Each time widget gets rebuild when setState() method gets called",
      ],
    );
  }
}
