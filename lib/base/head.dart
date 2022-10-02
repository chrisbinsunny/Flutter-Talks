import 'package:flutter/material.dart';

import '../sizes.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key, required this.heading}) : super(key: key);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  size: screenHeight(context, mulBy: 0.6),
                ),
              ),
              Expanded(
                  child: Text(
                    heading,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 40
                    ),
                  )

              )
            ],
          ),
        ),
      ),
    );
  }
}
