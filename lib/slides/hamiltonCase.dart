import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/base/base4.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'dart:html' as html;

import 'package:google_fonts/google_fonts.dart';


class HamiltonCase extends StatefulWidget {
  const HamiltonCase({Key? key}) : super(key: key);

  @override
  State<HamiltonCase> createState() => _HamiltonCaseState();
}

class _HamiltonCaseState extends State<HamiltonCase> {
  @override
  Widget build(BuildContext context) {
    return Base4(
      children: [
        SizedBox(
          width: screenWidth(context, mulBy: 0.05),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: screenHeight(context, mulBy: 0.8),
            child: Image.asset(
              "assets/images/hamiltonApp.png",
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: SizedBox(
              width: screenWidth(context, mulBy: 0.5),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "\"Hamilton launched as a ",
                        style: Theme.of(context).textTheme.bodyLarge,
                        children: [
                          TextSpan(
                              text: "featured ",
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                fontStyle: FontStyle.italic
                              ),
                          ),
                          const TextSpan(
                              text: "app on iOS and Android "
                          ),
                          TextSpan(
                              text: "within three months of us writing our first line of Flutter code",
                              style: GoogleFonts.kumbhSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 48,
                                color: Colors.blue,
                              )
                          ),
                          const TextSpan(
                              text: ".\""
                          ),
                        ]
                    ),

                  ),
                  SizedBox(
                    height: screenHeight(context, mulBy: 0.04),
                  ),
                  Text("David DeRemer\nCo-Founder, Posse",
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ),
        ),

      ],
    );
  }
}
