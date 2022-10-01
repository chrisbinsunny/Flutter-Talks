import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SlideSelector extends StatelessWidget {
  const SlideSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      autofocus: true,
        focusNode: FocusNode(),
        onKey: (event){
        if(event.isKeyPressed(LogicalKeyboardKey.arrowLeft)){
          Provider.of<Slide>(context,
              listen: false)
              .decSlideNo();
        }
        if(event.isKeyPressed(LogicalKeyboardKey.arrowRight)){
          Provider.of<Slide>(context,
              listen: false)
              .incSlideNo();
        }
        },
        child: Container());
  }
}


class Slide extends ChangeNotifier{

  int slideNo=0;

  int get getSlideNo {
    return slideNo;
  }


  void setSlideNo(int val) {
    slideNo= val;
    notifyListeners();
  }

  void incSlideNo() {
    if(slideNo==4){
      slideNo++;
    }
    slideNo++;
    notifyListeners();
  }

  void decSlideNo() {
    if(slideNo==6){
      slideNo--;
    }
    if(slideNo!=0){
      slideNo--;
    }
    notifyListeners();
  }
}