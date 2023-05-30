import 'dart:async';

import 'package:flutter/material.dart';
import 'clipper_arc_methods.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MySecondPage(),
    );
  }
}

class MySecondPage extends StatefulWidget {
  const MySecondPage({super.key});

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  double firstLeftValue = 20;
  double secondLeftValue = 150;
  double heigthOfContainer = 0;
  double widthOfContainer = 0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 20), (timer) {
      setState(() {
        if (firstLeftValue == secondLeftValue) {
          firstLeftValue = 20;
          secondLeftValue = 200;
          heigthOfContainer = 200;
          widthOfContainer = 200;
          timer.cancel();
        } else {
          firstLeftValue += 1;
          secondLeftValue -= 1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var myScreenSize = MediaQuery.of(context).size;
    double heightOfMyScreen = myScreenSize.height;
    double widthOfMyScreen = myScreenSize.width;
    double heightOfMyContainer = heightOfMyScreen * 0.5;
    double widthOfMyContainer = widthOfMyScreen * 0.9;
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipPath(
            clipper: ClipperArcMethods(
                heightOfContainer: heightOfMyContainer,
                widthOfContainer: widthOfMyContainer,
                firstLeftWidth: firstLeftValue,
                secondLeftWidth: secondLeftValue),
            child: Container(
              height: heightOfMyContainer,
              width: widthOfMyContainer,
              color: Colors.blue,
            ),
          )
        ]),
      ),
    );
  }
}
