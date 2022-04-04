import 'package:flutter/material.dart';
class page_1 extends StatelessWidget {
  const page_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            margin: EdgeInsets.only(top:450,left: 20,right: 20),
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:AssetImage("assets/shengri.png"),
                    fit: BoxFit.fitWidth
                )
            )
        ),
    );
  }
}
