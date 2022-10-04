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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: screenHeight(context, mulBy: 0.8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0, 3)
                    )
                  ],
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  "assets/images/adwordsCase.png",
                  fit: BoxFit.fitHeight,
                  height: screenHeight(context),
                ),
              ),
              Container(
                height: screenHeight(context, mulBy: 0.8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0, 3)
                    )
                  ],
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  "assets/images/alibabaCase.png",
                  fit: BoxFit.fitHeight,
                  height: screenHeight(context),
                ),
              ),
              Container(
                height: screenHeight(context, mulBy: 0.8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0, 3)
                    )
                  ],
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  "assets/images/birchCase.png",
                  fit: BoxFit.fitHeight,
                  height: screenHeight(context),
                ),
              ),
              Container(
                height: screenHeight(context, mulBy: 0.8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0, 3)
                    )
                  ],
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  "assets/images/hamiltonCase.png",
                  fit: BoxFit.fitHeight,
                  height: screenHeight(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class GpayCase extends StatelessWidget {
  const GpayCase({Key? key, }) : super(key: key);


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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: screenHeight(context, mulBy: 0.8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0, 3)
                    )
                  ],
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  "assets/images/gpay.jpg",
                  fit: BoxFit.fitHeight,
                  height: screenHeight(context),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: screenHeight(context, mulBy: 0.4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(0, 3)
                        )
                      ],
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      "assets/images/gpay1.png",
                      fit: BoxFit.fitHeight,
                      height: screenHeight(context),
                    ),
                  ),
                  Container(
                    height: screenHeight(context, mulBy: 0.4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(0, 3)
                        )
                      ],
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      "assets/images/gpay2.png",
                      fit: BoxFit.fitHeight,
                      height: screenHeight(context),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}