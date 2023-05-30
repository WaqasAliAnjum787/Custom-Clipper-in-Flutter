import 'dart:math';
import 'package:flutter/material.dart';

class ClipperArcMethods extends CustomClipper<Path> {
  double firstLeftWidth;
  double secondLeftWidth;
  double heightOfContainer = 50;
  double widthOfContainer = 50;

  ClipperArcMethods(
      {required this.firstLeftWidth,
      required this.secondLeftWidth,
      required this.heightOfContainer,
      required this.widthOfContainer});
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    double centerWidth = width / 2;
    double centerHeight = height / 2;
    Path path = Path();

    //will make a circle and with given radius and it will held to that points which are given to it in the offset
    // path.addOval(Rect.fromCircle(
    //     center: Offset(centerWidth, centerHeight), radius: height / 3));
    //It will make a oval get a offset for the center and take the height and width of that oval
    // path.addOval(Rect.fromCenter(
    //     center: Offset(centerWidth, centerHeight),
    //     width: width / 2,
    //     height: height / 2));

    //This method will make a poly gon that ask about points and and give the certain shape
    // path.addPolygon([
    //   Offset(centerWidth, 0),
    //   Offset(width, height * 0.1),
    //   Offset(width, height * 0.6),
    //   Offset(width * 0.8, height),
    //   Offset(0, height * 0.7),
    //   Offset(0, height * 0.3),
    //   Offset(centerWidth, 0)
    // ], true);
    //This method is used to get the arc on any side of the circle by
    //It's detonation point is startAngle + sweep Angle
    // path.addArc(Rect.fromLTWH(0, 0, width, height), degreeToRadian(45),
    //     degreeToRadian(270));

    //path.quadraticBezierTo(centerWidth, centerHeight, width, 0);

    //Creating a  image holder for a Profile activity
    //it take 2 points form us and make it that curve will attracted by these points
    // path.cubicTo(0, 0, centerWidth, centerHeight, width, 0);
    // path.lineTo(width, height);
    // path.lineTo(0, height);
    // path.lineTo(0, 0);

    // path.cubicTo(
    //     0, height * 0.63, width * 0.5, height * 0.15, width, height * 0.9);
    // path.lineTo(width, 0);
    // path.lineTo(0, 0);

    //Creating a wave

    // path.moveTo(0, height * 0.35);
    // path.cubicTo(
    //     width * 0.4, height * 0.05, width * 0.5, height * 0.45, width, 0);
    // path.lineTo(width, height);
    // path.lineTo(0, height);

    //creating a wave like image

    // path.moveTo(0, height * 0.35);
    // path.cubicTo(
    //     width * 0.4, height * 0.05, width * 0.5, height * 0.45, width, 0);
    // path.cubicTo(
    //     width * 0.65, height * 0.15, width, height * 0.6, width, height);
    // path.cubicTo(width * 0.4, height, width * 0.35, 0, 0, height);
    // path.cubicTo(width * 0.15, height, 0, height * 0.8, 0, 0);

    //It will cut our Container into two rectangles
    // path.addRect(Rect.fromLTWH(0, 0, width, height * 0.4));
    // path.addRect(Rect.fromLTWH(0, height * 0.5, width, height * 0.4));

    // path.addRect(Rect.fromLTWH(0, 0, width, height * 0.5));
    // //we create a path and then add this path to the addPath() function

    // Path path1 = Path();
    // path1.moveTo(0, height * 0.5);
    // path1.lineTo(width, height * 0.5);
    // path1.lineTo(width, height);
    // path1.lineTo(0, height);
    // path1.close();
    // path.addPath(path1, Offset(0, height * 0.01

    //));

    //it will  cut our container into two rectangles and
    //it we move it accordingly and can create some effects

    // path.addRRect(RRect.fromRectXY(
    //     Rect.fromLTWH(width * 0.2, height * 0.1, width * 0.2, height * 0.2),
    //     34,
    //     10));
    // path.addRRect(RRect.fromRectXY(
    //     Rect.fromLTWH(width * 0.8, height * 0.1, width * 0.2, height * 0.2),
    //     34,
    //     10));

    //Creating a animation that have a pic they are moving and when both rectangles joins they will create a effect that their height and will suddenly increased and in that way a little bit animation will accrue

    //Sow lets start
    //first create a constructor and which have some values that will increase Timer

    // path.addRRect(RRect.fromRectXY(
    //     Rect.fromLTWH(
    //         firstLeftWidth, height * 0.4, width * 0.2, heightOfContainer),
    //     5,
    //     5));
    // path.addRRect(RRect.fromRectXY(
    //     Rect.fromLTWH(secondLeftWidth, height * 0.4, width * 0.2, height * 0.2),
    //     5,
    //     5));

    //All the clipper methods has done;

    //Here are some more practice

    // path.moveTo(0, height * 0.9);
    // path.lineTo(width * 0.35, height * 0.9);
    // path.lineTo(width, height * 0.2);
    // path.cubicTo(width, height * 0.2, width * 0.8, 0, 0, 0);
    // path.lineTo(width, 0);
    // path.lineTo(0, 0);

    //shape like mobile

    path.lineTo(width * 0.25, 0);
    path.cubicTo(width * 0.3, height * 0.15, width * 0.75, height * 0.15,
        width * 0.75, 0);
    path.lineTo(width, 0);
    path.lineTo(width, height);
    path.moveTo(width * 0.9, 0);
    path.cubicTo(
        width * 0.1, height * 0.9, width * 0.2, height * 0.9, 0, height);
    path.lineTo(0, height);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

double degreeToRadian(double degree) => degree * (pi / 180);
