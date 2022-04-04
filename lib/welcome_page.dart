import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/page_1.dart';
import 'page_1.dart';

class welcome_page extends StatefulWidget {
  const welcome_page({Key? key}) : super(key: key);

  @override
  _welcome_pageState createState() => _welcome_pageState();
}

class _welcome_pageState extends State<welcome_page> {
  List images =[
    "whole_family.png",
    "shengri.png",
    "hbd.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (_, index){
          return page_1();
      }),
    );
  }
}
