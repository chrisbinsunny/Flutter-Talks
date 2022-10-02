import 'package:flutter/material.dart';
import 'package:flutter_talks/slideSelector.dart';

import '../sizes.dart';

class HeadingBase extends StatelessWidget {
  const HeadingBase({Key? key, required this.heading}) : super(key: key);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return SlideSelector(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth(context, mulBy: 0.05),
              vertical: screenHeight(context, mulBy: 0.08)
          ),
          child: SizedBox(
            height: screenHeight(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: FlutterLogo(
                    size: screenHeight(context, mulBy: 0.5),
                  ),
                ),
                Expanded(
                    child: FittedBox(
                      child: Text(
                        heading,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 60
                        ),
                      ),
                    )

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
