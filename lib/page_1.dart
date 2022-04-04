import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'wishes.dart';
class page_1 extends StatelessWidget {
  const page_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.only(top:450,left: 20,right: 20),
        width: double.maxFinite,
        height: double.maxFinite,
        alignment: Alignment.topCenter,
        child: wishes(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage("assets/whole_family.png"),
                fit: BoxFit.fitWidth
            )
        )
    );

  }
}

class page_2 extends StatelessWidget {
  const page_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(top:450,left: 20,right: 20),
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:AssetImage("assets/whole_family.png"),
                  fit: BoxFit.fitWidth,
              )
          )
      );

  }
}

class page_3 extends StatelessWidget {
  const page_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top:450,left: 20,right: 20),
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage("assets/hbd.png"),
                fit: BoxFit.fitWidth
            )
        )
    );

  }
}
