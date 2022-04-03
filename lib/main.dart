import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light()
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late ConfettiController controller1;

  @override
  void initState() {
    controller1 = ConfettiController(duration: Duration(milliseconds: 500));
    super.initState();
  }

  @override
  void dispose() {
    controller1.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: ConfettiWidget(
                    confettiController: controller1,
                    shouldLoop: true,
                    blastDirection: pi / 2,
                    gravity: 0.02,
                    numberOfParticles: 100,
                    emissionFrequency: 0.02,
                    displayTarget: true,
                    blastDirectionality: BlastDirectionality.explosive,
                    colors: [
                      Colors.redAccent,
                      Colors.purpleAccent,
                      Colors.pinkAccent,Colors.orange,
                      Colors.orangeAccent
                    ],
                  ),
                ),
                // ignore: deprecated_member_use
                SizedBox(height: 100,),
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        controller1.play();
                        showDialog(
                            context: context,
                            builder: (BuildContext context){
                              return AlertDialog(
                                content: Container(
                                  height:100,
                                  width:100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(width: 4,color: Colors.redAccent),
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 25,
                                            color: Colors.redAccent,
                                            offset: Offset(1,15)
                                        )
                                      ]
                                  ),
                                  child: Text("HAPPY BIRTHDAY",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 25
                                    ),),
                                ),
                              );
                            });

                      });
                    },

                    child: Text("Press",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800
                      ),)
                )
              ],
            ),
          ),
        )
    );
  }
}
