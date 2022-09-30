import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

import '../base/base2.dart';


class Slide4 extends StatefulWidget {
  const Slide4({Key? key}) : super(key: key);

  @override
  State<Slide4> createState() => _Slide4State();
}

class _Slide4State extends State<Slide4> {
  @override
  Widget build(BuildContext context) {
    return Base2(
      head: "All time challenges of mobile development",
      children: [
        SizedBox(
          height: screenHeight(context, mulBy: 0.2),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "“  ",
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w600,
                  fontSize: 100,
                  color: Colors.blue,

                )
            ),
            SizedBox(
              width: screenWidth(context, mulBy: 0.45),
              child: RichText(
                text: TextSpan(
                  text: "Flutter combines\n",
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: [
                    TextSpan(
                      text: "native performance and quality ",
                        style: GoogleFonts.kumbhSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 48,
                          color: Colors.blue,
                        )
                    ),
                    TextSpan(
                        text: "with "
                    ),
                    TextSpan(
                        text: "high-velocity development ",
                        style: GoogleFonts.kumbhSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 48,
                          color: Colors.blue,
                        )
                    ),
                    TextSpan(
                        text: "and "
                    ),
                    TextSpan(
                        text: "multi-platform reach",
                        style: GoogleFonts.kumbhSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 48,
                          color: Colors.blue,
                        )
                    ),
                    TextSpan(
                        text: "."
                    ),
                  ]
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                  "  ”",
                  style: GoogleFonts.spaceGrotesk(
                    fontWeight: FontWeight.w600,
                    fontSize: 100,
                    color: Colors.blue,

                  )
              ),
            ),
          ],
        )
      ],
    );
  }
}
