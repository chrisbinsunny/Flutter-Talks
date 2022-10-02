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
            toolbarHeight: screenHeight(context, mulBy: 0.1),
            leading: SizedBox(),
            title: Text(
              head,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: Colors.white,
                fontSize: 48
              ),
            ),
          ),
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth(context, mulBy: 0.05),
              vertical: screenHeight(context, mulBy: 0.08)
          ),
          children: children,
        ),
      ),
    );
  }
}

