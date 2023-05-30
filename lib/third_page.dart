import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ThirdPage(),
    );
  }
}

class ThirdPages extends StatefulWidget {
  const ThirdPages({super.key});

  @override
  State<ThirdPages> createState() => _ThirdPagesState();
}

class _ThirdPagesState extends State<ThirdPages> {
  @override
  Widget build(BuildContext context) {
    var myScreenSize = MediaQuery.of(context).size;
    double heightOfMyScreen = myScreenSize.height;
    double widthOfMyScreen = myScreenSize.width;
    double heightOfMyContainer = heightOfMyScreen * 0.5;
    double widthOfMyContainer = widthOfMyScreen * 0.9;
    return Scaffold(
      body: Column(children: [
        Container(
          height: heightOfMyContainer,
          width: widthOfMyContainer,
          color: Colors.blue,
        )
      ]),
    );
  }
}
