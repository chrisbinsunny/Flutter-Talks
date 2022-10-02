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
    return Base5(
      head: "Stateful Widget",
      children: [
        SizedBox(
          height: screenHeight(context, mulBy: 0.1),
        ),
        Text("✔️   Dynamic widget which has its own properties",
            style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("✔️   Those property is known as state of the widget",
            style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("✔️   The state of the widget can be changed by user input, any operation or other widget’s state change",
            style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("✔️   setState() method is used to change the state",
            style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("✔️   Each time widget gets rebuild when setState() method gets called",
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
