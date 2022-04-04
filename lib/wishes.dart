import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class wishes extends StatelessWidget {
  const wishes({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(top: 200),
      child: AnimatedTextKit(animatedTexts: [
        TyperAnimatedText(text,textStyle: TextStyle(fontSize: 27))
      ],),
      
    );
  }
}
