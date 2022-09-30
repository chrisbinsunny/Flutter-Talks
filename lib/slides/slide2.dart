import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;


class Slide2 extends StatefulWidget {
  const Slide2({Key? key}) : super(key: key);

  @override
  State<Slide2> createState() => _Slide2State();
}

class _Slide2State extends State<Slide2> {
  @override
  Widget build(BuildContext context) {
    return Base1(
      children: [
        Text(
            "Flutter is Google’s UI Framework",
            style: Theme.of(context).textTheme.headline2
        ),
        SizedBox(
          height: screenHeight(context, mulBy: 0.01),
        ),
        underline(),
        SizedBox(
          height: screenHeight(context, mulBy: 0.15),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: screenWidth(context, mulBy: 0.4),
                child: Text(
                    "Helping developers craft high-quality native experiences across multiple platforms in record time.",
                    style: Theme.of(context).textTheme.headline2
                ),
              ),
              Container(
                height: 320,
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
                  "assets/chrisbin.jpg",
                ),
              ),
              SizedBox(
                width: screenWidth(context, mulBy: 0.02),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Chrisbin Sunny",
                      style: Theme.of(context).textTheme.headline3
                  ),
                  TextButton(
                      onPressed: (){
                        html.window.open('https://bio.link/chrisbin', 'new tab');
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          EdgeInsets.zero,
                        ),
                      ),
                      child: Text(
                          "bio.link/chrisbin",
                        style: Theme.of(context).textTheme.headline3?.copyWith(
                            color: Colors.blueGrey,
                          fontSize: 25
                        ),

                  ))
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
