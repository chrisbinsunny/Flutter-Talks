import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';


class Ecosystem extends StatefulWidget {
  const Ecosystem({Key? key}) : super(key: key);

  @override
  State<Ecosystem> createState() => _EcosystemState();
}

class _EcosystemState extends State<Ecosystem> {
  @override
  Widget build(BuildContext context) {
    return Base2(
      head: "Rich ecosystem and community",
      children: [
        SizedBox(
          height: screenHeight(context, mulBy: 0.1),
        ),
        Text("- 1,100+ other packages in repository",
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("- 1,10,000+ Github stars",
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("- 500+ apps in Play Store",
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("- startflutter.com, flutter.rocks, flutter.institute, and more",
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: screenHeight(context, mulBy: 0.035),
        ),
        Text("- Open source (250+ contributors), BSD license",
            style: Theme.of(context).textTheme.headlineSmall),
      ],
    );
  }
}
