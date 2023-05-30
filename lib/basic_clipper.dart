import 'package:flutter/material.dart';

class MyBasisCustomClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    double centerWidth = width / 2;
    double centerHeight = height / 2;

    Path path = Path();
    //Move our clipper to the
    path.moveTo(0, height * 0.5);
    //cutting the upper side of container
    path.lineTo(width, height * 0.15);
    path.lineTo(width, 0);
    //Reached at the origen
    path.lineTo(0, 0);
    path.lineTo(0, height * 0.3);
    //move the curser below
    path.moveTo(0, height * 0.65);
    //cutting the down part of container
    path.lineTo(width, height * 0.3);
    path.lineTo(width, height);
    path.lineTo(0, height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
