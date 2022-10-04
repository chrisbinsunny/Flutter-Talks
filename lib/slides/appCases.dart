import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/slideSelector.dart';



class AppCases extends StatelessWidget {
  const AppCases({Key? key, }) : super(key: key);


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
          child: Row(
            children: [
              Image.asset(
                "assets/images/widgets.png",
                fit: BoxFit.fitHeight,
                height: screenHeight(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

