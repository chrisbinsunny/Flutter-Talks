import 'package:flutter/material.dart';
import 'package:flutter_talks/sizes.dart';

import '../widgets.dart';



class Base2 extends StatelessWidget {
  const Base2({Key? key, required this.children, required this.head}) : super(key: key);

  final List<Widget> children;
  final String head;

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
            vertical: screenHeight(context, mulBy: 0.08)
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
              head,
              style: Theme.of(context).textTheme.displayMedium
          ),
          SizedBox(
            height: screenHeight(context, mulBy: 0.01),
          ),
          underline(),
              SizedBox(
                height: screenHeight(context, mulBy: 0.05),
              ),
              ...children,
            ],
          ),
        ),
      )
    );
  }
}

