import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/slideSelector.dart';



class Base5 extends StatelessWidget {
  const Base5({Key? key,  required this.children, required this.head}) : super(key: key);

  final List<Widget> children;
  final String head;
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
          appBar: AppBar(
            title: Text(
              head
            ),
          ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth(context, mulBy: 0.05),
              vertical: screenHeight(context, mulBy: 0.08)
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        )
      ),
    );
  }
}

