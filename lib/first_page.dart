import 'package:flutter/material.dart';

import 'basic_clipper.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ClipperAllPractice(),
    );
  }
}

class ClipperAllPractice extends StatefulWidget {
  const ClipperAllPractice({super.key});

  @override
  State<ClipperAllPractice> createState() => _ClipperAllPracticeState();
}

class _ClipperAllPracticeState extends State<ClipperAllPractice> {
  @override
  Widget build(BuildContext context) {
    var myScreenSize = MediaQuery.of(context).size;
    double heightOfMyScreen = myScreenSize.height;
    double widthOfMyScreen = myScreenSize.width;
    double heightOfMyContainer = heightOfMyScreen * 0.5;
    double widthOfMyContainer = widthOfMyScreen * 0.9;

    return Scaffold(
      body: Center(
          child: Stack(children: [
        ClipPath(
          clipper: MyBasisCustomClipper(),
          child: Container(
            height: heightOfMyContainer,
            width: widthOfMyContainer,
            decoration: const BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topLeft, colors: [
              Colors.blue,
              Colors.pink,
              Colors.deepPurpleAccent,
              Colors.purple
            ])),
          ),
        ),
        Positioned(
            top: widthOfMyContainer * 0.61,
            left: widthOfMyContainer * 0.15,
            child: Container(
              height: heightOfMyContainer * 0.12,
              width: widthOfMyContainer * 0.13,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1682997843681-4a0d07fa9633?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle),
              // child: Image.network(
              //     'https://images.unsplash.com/photo-1682997843681-4a0d07fa9633?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
              //     fit: BoxFit.fill),
            )),
        Positioned(
            top: widthOfMyContainer * 0.52,
            left: widthOfMyContainer * 0.35,
            child: Container(
              height: heightOfMyContainer * 0.12,
              width: widthOfMyContainer * 0.13,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1682997843681-4a0d07fa9633?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle),
              // child: Image.network(
              //     'https://images.unsplash.com/photo-1682997843681-4a0d07fa9633?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
              //     fit: BoxFit.fill),
            )),
        Positioned(
            top: widthOfMyContainer * 0.67,
            child: Container(
              height: heightOfMyContainer * 0.12,
              width: widthOfMyContainer * 0.13,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1682997843681-4a0d07fa9633?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle),
              // child: Image.network(
              //     'https://images.unsplash.com/photo-1682997843681-4a0d07fa9633?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
              //     fit: BoxFit.fill),
            )),
      ])),
    );
  }
}
