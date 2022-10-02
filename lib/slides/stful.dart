import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';
import '../base/base5.dart';


class Stateless extends StatefulWidget {
  const Stateless({Key? key}) : super(key: key);

  @override
  State<Stateless> createState() => _StatelessState();
}

class _StatelessState extends State<Stateless> {
  @override
  Widget build(BuildContext context) {
    return Base5(
      head: "Stateless Widget",
      children: [
        SizedBox(
          height: screenHeight(context, mulBy: 0.1),
        ),
        Text("✔️   Dumb Widget",
            style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("✔️   It doesn’t know anything",
            style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("✔️   Gets rendered only once or",
            style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("✔️   When the parent widget changes the configuration",
            style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("✔️   Useful for code reusing",
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
