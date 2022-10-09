import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_talks/sizes.dart';
import 'package:flutter_talks/slideSelector.dart';



class Base5 extends StatelessWidget {
  const Base5({Key? key,  required this.children, required this.head}) : super(key: key);

  final List<String> children;
  final String head;
  @override
  Widget build(BuildContext context) {
    return SlideSelector(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.large(
          onPressed: (){
            window.open('https://flutter.dev', 'new tab');
          },
          child: const FlutterLogo(
            size: 50,
          ),
        ),
          appBar: AppBar(
            toolbarHeight: screenHeight(context, mulBy: 0.1),
            leading: SizedBox(),
            title: Text(
              head,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        body: Center(
            child: SizedBox(
                width: screenWidth(context),
                child: AspectRatio(
                    aspectRatio: 16/9,
                    child: FittedBox(
                        fit: BoxFit.contain,
                        alignment: Alignment.centerLeft,
                        child: ListView.separated(
          padding: EdgeInsets.only(
              right: screenWidth(context, mulBy: 0.05),
              left:  screenWidth(context, mulBy: 0.05),
              top: screenHeight(context, mulBy: 0.18),
            bottom: screenHeight(context, mulBy: 0.08)
          ),
          itemBuilder: (context, index){
            return Text("✔️   ${children[index]}",
                style: Theme.of(context).textTheme.bodyMedium);
          },
          separatorBuilder: (context, index){
            return SizedBox(
              height: screenHeight(context, mulBy: 0.035),
            );
          },
          itemCount: children.length,
        ))))),
      ),
    );
  }
}

