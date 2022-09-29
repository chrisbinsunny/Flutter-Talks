import 'package:flutter/material.dart';
import 'package:flutter_talks/sizes.dart';



class Base1 extends StatelessWidget {
  const Base1({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        onPressed: (){},
        child: const FlutterLogo(
          size: 50,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth(context, mulBy: 0.05),
            vertical: screenHeight(context, mulBy: 0.1)
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      )
    );
  }
}

