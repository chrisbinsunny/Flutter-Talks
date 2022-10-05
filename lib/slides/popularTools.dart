import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_talks/base/base1.dart';
import 'package:flutter_talks/sizes.dart';

import '../base/base2.dart';



class PopularTools extends StatefulWidget {
  const PopularTools({Key? key}) : super(key: key);

  @override
  State<PopularTools> createState() => _PopularToolsState();
}

class _PopularToolsState extends State<PopularTools> {
  @override
  Widget build(BuildContext context) {
    return Base1(
      children: [
        SizedBox(
          height: screenHeight(context, mulBy: 0.1),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight(context, mulBy: 0.1),
                  child: Image.asset(
                    "assets/icons/studio.png",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Android Studio",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Column(
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight(context, mulBy: 0.1),
                  child: Image.asset(
                    "assets/icons/xcode.png",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "XCode",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Column(
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight(context, mulBy: 0.1),
                  child: Image.asset(
                    "assets/icons/vscode.png",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "VS Code",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Column(
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight(context, mulBy: 0.1),
                  child: Image.asset(
                    "assets/icons/firebase.png",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Firebase",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),

              ],
            ),
            Container(
              height: screenHeight(context, mulBy: 0.15),
              width: screenHeight(context, mulBy: 0.15),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
              ),
              child: const Text(
                "3rd- Party\nAndroid\nSDKs",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25
                ),


              ),
            )
          ],
        ),
        SizedBox(
          height: screenHeight(context, mulBy: 0.2),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight(context, mulBy: 0.1),
                  child: Image.asset(
                    "assets/icons/android.png",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Android APIs",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Column(
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight(context, mulBy: 0.1),
                  child: Image.asset(
                    "assets/icons/apple.png",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "IOS APIs",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Column(
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight(context, mulBy: 0.1),
                  child: Image.asset(
                    "assets/icons/material.png",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Material Design",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Column(
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight(context, mulBy: 0.1),
                  child: Image.asset(
                    "assets/icons/redux.png",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Redux",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Container(
              height: screenHeight(context, mulBy: 0.15),
              width: screenHeight(context, mulBy: 0.15),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue
              ),
              child: const Text(
                  "3rd- Party\nIOS SDKs",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
                ),


                  ),
            )
          ],
        )
      ],
    );
  }
}
