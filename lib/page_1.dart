import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'wishes.dart';
import 'caidai.dart';
class page_1 extends StatelessWidget {
  const page_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top:45,left: 20,right: 20),
        width: double.maxFinite,
        height: double.maxFinite,
        alignment: Alignment.topCenter,
        child: wishes(text: '寿星公，生日快乐啊！',),
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
          margin: EdgeInsets.only(top:45,left: 20,right: 20),
          width: double.maxFinite,
          height: double.maxFinite,
          alignment: Alignment.topCenter,
          child: wishes(text: '祝你年年有今日！',),
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
        margin: EdgeInsets.only(top:45,left: 20,right: 20),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
          children: <Widget>[
            wishes(text:'岁岁有今朝'),
            caidai(),
            // Positioned(
            //   left: 18.0,
            //   child: Text("I am Jack"),
            // ),
            // Positioned(
            //   top: 18.0,
            //   child: Text("Your friend"),
            // )
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage("assets/hbd.png"),
                fit: BoxFit.fitWidth
            )
        )
    );

  }
}
