import 'package:flutter/material.dart';
import 'package:flutter_talks/sizes.dart';



class Base1 extends StatelessWidget {
  const Base1({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        onPressed: (){},
        child: const FlutterLogo(
          size: 50,
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context, mulBy: 0.05)
        ),
        child: body,
      ),
    );
  }
}

