
import 'package:flutter/material.dart';
import 'package:flutter_talks/sizes.dart';

Container underline(){

  return Container(
    width: 50,
    height: 10,
    color: const Color(0xfffbbc04),

  );
}

class ListContent extends StatelessWidget {
  const ListContent({Key? key, required this.head, required this.sub, required this.check}) : super(key: key);

  final String head, sub;
  final bool check;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: screenHeight(context, mulBy: 0.025)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            check?Icons.check:Icons.close,
            color: check?Colors.green:Colors.red,
            size: 40,
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                head,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                sub,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          )
        ],
      ),
    );
  }
}
