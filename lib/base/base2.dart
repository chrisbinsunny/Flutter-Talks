import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/slideSelector.dart';

import '../widgets.dart';

class Base2 extends StatelessWidget {
  const Base2({Key? key, required this.children, required this.head, this.getChildren})
      : super(key: key);

  final List<Widget> children;
  final String head;
  final List<Widget> Function(BoxConstraints sizes)? getChildren;


  @override
  Widget build(BuildContext context) {
    return SlideSelector(
      child: Scaffold(
          floatingActionButton: FloatingActionButton.large(
            onPressed: () {
              window.open('https://flutter.dev', 'new tab');
            },
            child: const FlutterLogo(
              size: 50,
            ),
          ),
          body: Center(
            child: SizedBox(
              width: screenWidth(context),
              child: AspectRatio(
                aspectRatio: 16/9,
                child: FittedBox(
                  alignment: Alignment.center,
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    color: Colors.black,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth(context, mulBy: 0.05),
                            vertical: screenHeight(context, mulBy: 0.08)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(head,
                                style: Theme.of(context).textTheme.displayMedium),
                            SizedBox(
                              height: screenHeight(context, mulBy: 0.01),
                            ),
                            underline(),
                            SizedBox(
                              height: screenHeight(context, mulBy: 0.05),
                            ),
                            ...children,
                            // ...children,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
                  ),
                );
  }
}
