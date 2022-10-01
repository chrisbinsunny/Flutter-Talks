import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;


class Slide1 extends StatefulWidget {
  const Slide1({Key? key}) : super(key: key);

  @override
  State<Slide1> createState() => _Slide1State();
}

class _Slide1State extends State<Slide1> {
  @override
  Widget build(BuildContext context) {
    return Base1(
      children: [
        Text(
            "Flutter",
            style: Theme.of(context).textTheme.displayLarge
        ),
        Text(
            "Of the devs, by the devs and for the devs",
            style: Theme.of(context).textTheme.displayMedium
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
              Container(
                height: 300,
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
                      style: Theme.of(context).textTheme.displaySmall
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
                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
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
