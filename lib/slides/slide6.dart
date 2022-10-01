import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;


class Slide6 extends StatefulWidget {
  const Slide6({Key? key}) : super(key: key);

  @override
  State<Slide6> createState() => _Slide6State();
}

class _Slide6State extends State<Slide6> {
  @override
  Widget build(BuildContext context) {
    return Base1(
      children: [
        SizedBox(
          height: screenHeight(context, mulBy: 0.84),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: screenWidth(context, mulBy: 0.18),
                height: screenHeight(context, mulBy: 0.35),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
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
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth(context, mulBy: 0.02)
                ),
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/fast.png",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                        "High-Velocity Development",
                         style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Container(
                width: screenWidth(context, mulBy: 0.18),
                height: screenHeight(context, mulBy: 0.35),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
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
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth(context, mulBy: 0.02)
                ),
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/flex.png",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Expressive and Flexible Toolkit",
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Container(
                width: screenWidth(context, mulBy: 0.18),
                height: screenHeight(context, mulBy: 0.35),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
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
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth(context, mulBy: 0.02)
                ),
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/native2.png",
                        ),
                        Image.asset(
                          "assets/icons/native1.png",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Native iOS and Android App",
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
