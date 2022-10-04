import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SlideSelector extends StatelessWidget {
  const SlideSelector({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final slide = Provider.of<Slide>(context);

    return RawKeyboardListener(
        autofocus: true,
        focusNode: FocusNode(),
        onKey: (event) {
          Provider.of<Slide>(context, listen: false).setSlideNo(
            int.parse(
              ModalRoute.of(context)?.settings.name?.replaceAll("/slide", "")??"1",
            ),
          );

          if (event.isKeyPressed(LogicalKeyboardKey.arrowLeft)) {
            Provider.of<Slide>(context, listen: false).decSlideNo();
            Navigator.of(context)
                .pushReplacementNamed("/slide${slide.getSlideNo}");
          }
          if (event.isKeyPressed(LogicalKeyboardKey.arrowRight)) {
            Provider.of<Slide>(context, listen: false).incSlideNo();
            Navigator.of(context)
                .pushReplacementNamed("/slide${slide.getSlideNo}");
          }
        },
        child: child);
  }
}

class Slide extends ChangeNotifier {
  int slideNo = 1;

  int get getSlideNo {
    return slideNo;
  }

  void setSlideNo(int val) {
    slideNo = val;
    notifyListeners();
  }

  void incSlideNo() {
    if (slideNo == 4) {
      slideNo++;
    }
    if (slideNo != 24) {
      slideNo++;
    }
    notifyListeners();
  }

  void decSlideNo() {
    if (slideNo == 6) {
      slideNo--;
    }
    if (slideNo != 1) {
      slideNo--;
    }
    notifyListeners();
  }
}
