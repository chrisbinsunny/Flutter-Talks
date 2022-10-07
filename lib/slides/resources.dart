import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/base/base3.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import '../base/base2.dart';

class Resources extends StatefulWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  @override
  Widget build(BuildContext context) {
    return Base3(
      head: "Useful Flutter Resources",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/gif/ui2.gif",
          ),
          Image.asset(
            "assets/gif/ui3.gif",
          )
        ],
      ),
      children: [
        TextButton(
            onPressed: (){
              html.window.open('https://flutter.dev/', 'new tab');
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.zero,
              ),
              alignment: Alignment.centerLeft
            ),

            child: RichText(
                text: TextSpan(
                    text: "Flutter Website: ",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontSize: 27,
                    ),
                    children: [
                      TextSpan(
                          text:"flutter.dev",
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              color: Colors.blueGrey,
                              fontSize: 27,
                              decoration: TextDecoration.underline
                          )
                      )
                    ]
                )),),
        SizedBox(
          height: screenHeight(context, mulBy: 0.04),
        ),
        TextButton(
          onPressed: (){
            html.window.open('https://docs.flutter.dev/get-started/install', 'new tab');
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.zero,
              ),
              alignment: Alignment.centerLeft
          ),

          child: RichText(
              text: TextSpan(
                  text: "Flutter Installation: ",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontSize: 27,
                  ),
                  children: [
                    TextSpan(
                        text:"docs.flutter.dev/get-started/install",
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.blueGrey,
                            fontSize: 27,
                            decoration: TextDecoration.underline
                        )
                    )
                  ]
              )),),
        SizedBox(
          height: screenHeight(context, mulBy: 0.04),
        ),
        TextButton(
          onPressed: (){
            html.window.open('https://docs.flutter.dev/development/ui/widgets', 'new tab');
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.zero,
              ),
              alignment: Alignment.centerLeft
          ),

          child: RichText(
              text: TextSpan(
                  text: "Widgets Catalog: ",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontSize: 27,
                  ),
                  children: [
                    TextSpan(
                        text:"docs.flutter.dev/development/ui/widgets",
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.blueGrey,
                            fontSize: 27,
                            decoration: TextDecoration.underline
                        )
                    )
                  ]
              )),),
        SizedBox(
          height: screenHeight(context, mulBy: 0.04),
        ),
        TextButton(
          onPressed: (){
            html.window.open('https://docs.flutter.dev/cookbook', 'new tab');
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.zero,
              ),
              alignment: Alignment.centerLeft
          ),

          child: RichText(
              text: TextSpan(
                  text: "Flutter Cookbook: ",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontSize: 27,
                  ),
                  children: [
                    TextSpan(
                        text:"docs.flutter.dev/cookbook",
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.blueGrey,
                            fontSize: 27,
                            decoration: TextDecoration.underline
                        )
                    )
                  ]
              )),),
        SizedBox(
          height: screenHeight(context, mulBy: 0.04),
        ),
        TextButton(
          onPressed: (){
            html.window.open('https://flutter.dev/showcase', 'new tab');
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.zero,
              ),
              alignment: Alignment.centerLeft
          ),

          child: RichText(
              text: TextSpan(
                  text: "Flutter Showcase: ",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontSize: 27,
                  ),
                  children: [
                    TextSpan(
                        text:"flutter.dev/showcase",
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.blueGrey,
                            fontSize: 27,
                            decoration: TextDecoration.underline
                        )
                    )
                  ]
              )),),
        SizedBox(
          height: screenHeight(context, mulBy: 0.04),
        ),
        TextButton(
          onPressed: (){
            html.window.open('https://firebase.google.com/', 'new tab');
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.zero,
              ),
              alignment: Alignment.centerLeft
          ),

          child: RichText(
              text: TextSpan(
                  text: "Firebase: ",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontSize: 27,
                  ),
                  children: [
                    TextSpan(
                        text:"firebase.google.com/",
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.blueGrey,
                            fontSize: 27,
                            decoration: TextDecoration.underline
                        )
                    )
                  ]
              )),),
        SizedBox(
          height: screenHeight(context, mulBy: 0.04),
        ),
        TextButton(
          onPressed: (){
            html.window.open('https://material.io/', 'new tab');
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.zero,
              ),
              alignment: Alignment.centerLeft
          ),

          child: RichText(
              text: TextSpan(
                  text: "Material Design: ",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontSize: 27,
                  ),
                  children: [
                    TextSpan(
                        text:"material.io/",
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.blueGrey,
                            fontSize: 27,
                            decoration: TextDecoration.underline
                        )
                    )
                  ]
              )),),
        SizedBox(
          height: screenHeight(context, mulBy: 0.04),
        ),
      ],
    );
  }
}
