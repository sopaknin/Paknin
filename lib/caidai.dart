import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'dart:math';
//
// ahhah
class caidai extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<caidai> {
  late ConfettiController controller1;

  @override
  void initState() {
    controller1 = ConfettiController(duration: Duration(milliseconds: 500));
    super.initState();
  }

  // @override
  // void dispose() {
  //   controller1.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: controller1,
              shouldLoop: true,
              blastDirection: pi / 2,
              gravity: 0.02,
              numberOfParticles: 25,
              emissionFrequency: 0.02,
              blastDirectionality: BlastDirectionality.explosive,
              colors: [
                Colors.redAccent,
                Colors.purpleAccent,
                Colors.pinkAccent,
                Colors.orange,
                Colors.orangeAccent
              ],
            ),
          ),
          // ignore: deprecated_member_use
          SizedBox(
            height: 300,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  controller1.play();
                });
              },
              child: Text(
                "点击解锁好运",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
              ))
        ],
      ),
    );
  }
}
