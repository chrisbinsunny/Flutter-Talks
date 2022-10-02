import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/slideSelector.dart';



class Base4 extends StatelessWidget {
  const Base4({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

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
          width: double.maxFinite,
          height: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: children,
          ),
        )
      ),
    );
  }
}

