import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;


class Ques extends StatefulWidget {
  const Ques({Key? key}) : super(key: key);

  @override
  State<Ques> createState() => _QuesState();
}

class _QuesState extends State<Ques> {
  @override
  Widget build(BuildContext context) {
    return Base1(
      children: [
        SizedBox(
          height: screenHeight(context, mulBy: 0.05),
        ),
        Text(
            "Any Questions?",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold
            )
        ),
        underline(),
        SizedBox(
          height: screenHeight(context, mulBy: 0.25),
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20
            ),
            color: Colors.blueAccent,
            child: Text(
                "Let’s see Flutter in action _",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontSize: 48,
                  color: Colors.white
                )
            ),
          ),
        ),
        SizedBox(
          height: screenHeight(context, mulBy: 0.29),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            "Made using Flutter with 💙",
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        SizedBox(
          height: screenHeight(context, mulBy: 0.01),
        ),
         Align(
          alignment: Alignment.bottomCenter,
          child: TextButton(
            onPressed: (){
              html.window.open('https://github.com/chrisbinsunny/Flutter-Talks', 'new tab');
            },
            style: ButtonStyle(
                alignment: Alignment.centerLeft
            ),

            child:  RichText(
                text: const TextSpan(
                    text: "Find the code ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),
                    children: [
                      TextSpan(
                          text:"here",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              decoration: TextDecoration.underline
                          )
                      ),
                      TextSpan(
                          text:" | ⭐ the repo",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      )
                    ]
                )),
          ),
        ),
      ],
    );
  }
}
