import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/slideSelector.dart';

import '../widgets.dart';



class Base3 extends StatelessWidget {
  const Base3({Key? key, required this.children, required this.head, this.image, this.child}) : super(key: key);

  final List<Widget> children;
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
            SizedBox(
              width: screenWidth(context, mulBy: 0.5),
              child: ListView(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth(context, mulBy: 0.05),
                    vertical: screenHeight(context, mulBy: 0.08)
                ),
                children: [
                  Text(
                  head!,
                  style: Theme.of(context).textTheme.displayMedium
              ),
              SizedBox(
                height: screenHeight(context, mulBy: 0.01),
              ),
              Align(alignment:Alignment.topLeft,child: underline()),
                  SizedBox(
                    height: screenHeight(context, mulBy: 0.1),
                  ),
                  ...children
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: screenHeight(context),
                decoration: const BoxDecoration(
                  color: Color(0xff074177),

                ),
                clipBehavior: Clip.antiAlias,
                child: child??Image.asset(
                  image!,
                ),
              ),
            ),

          ],
        )
      ),
    );
  }
}

