import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_talks/base/head.dart';

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