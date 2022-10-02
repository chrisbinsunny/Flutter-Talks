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
    return const Base5(
      head: "Stateless Widget",
      children: [
        "Dumb Widget",
        "It doesn’t know anything",
        "Gets rendered only once or",
        "When the parent widget changes the configuration",
        "Useful for code reusing",
      ],
    );
  }
}
