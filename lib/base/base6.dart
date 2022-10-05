import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/slideSelector.dart';

import '../widgets.dart';



class Base6 extends StatelessWidget {
  const Base6({Key? key, this.children, this.head, this.image, this.child}) : super(key: key);

  final List<Widget>? children;
  final String? head, image;
  final Widget? child;

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

        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Theme.of(context).appBarTheme.backgroundColor,
                height: screenHeight(context),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth(context, mulBy: 0.05),
                    vertical: screenHeight(context, mulBy: 0.08)
                ),
                child: child??ListView(
                  children: [
                    Text(
                    head!,
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          color: Colors.white,
                          fontSize: 48
                      ),
                ),
                SizedBox(
                  height: screenHeight(context, mulBy: 0.01),
                ),
                Align(
                    alignment:Alignment.topLeft,
                    child: underline()),
                    SizedBox(
                      height: screenHeight(context, mulBy: 0.1),
                    ),
                    ...children!
                  ],
                ),
              ),
            ),
            Image.asset(
              image!,
              fit: BoxFit.fitHeight,
              height: screenHeight(context),
            ),

          ],
        )
      ),
    );
  }
}

