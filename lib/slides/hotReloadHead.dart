import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_talks/base/head.dart';

import '../base/base5.dart';
import '../sizes.dart';
import '../slideSelector.dart';

class HotReloadHead extends StatelessWidget {
  const HotReloadHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HeadingBase(heading: "\"Hot Reload\"");
  }
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key, }) : super(key: key);


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
        body: Center(
          child: Image.asset(
            "assets/gif/hotR.gif",
            fit: BoxFit.fitHeight,
            height: screenHeight(context),
          ),
        ),
      ),
    );
  }
}

class HotReloadExplained extends StatefulWidget {
  const HotReloadExplained({Key? key}) : super(key: key);

  @override
  State<HotReloadExplained> createState() => _HotReloadExplainedState();
}

class _HotReloadExplainedState extends State<HotReloadExplained> {
  @override
  Widget build(BuildContext context) {
    return const Base5(
      head: "Hot Reload",
      children: [
        "Injecting updated source code files into the running Dart VM",
        "Stateful: App state is retained after a reload.",
        "Quickly iterate on a screen deeply nested in your app",
      ],
    );
  }
}