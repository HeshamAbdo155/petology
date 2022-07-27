import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  DefaultContainer({
    Key? key,
    this.child,
    this.rightPad = 5.0,
    this.leftPad = 8.0,
    this.topPad = 10.0,
    this.width = 600.0,
    this.height = 70.0,
    this.bottomPad = 0.0,
    this.borderWidth = 0.0,
    this.radius = 25.0,
    this.elevation = 3.5,
  }) : super(key: key);

  final Widget? child;
  final double rightPad;
  final double leftPad;
  final double topPad;
  final double bottomPad;
  final double width;
  final double height;
  final double borderWidth;
  final double radius;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        padding: EdgeInsets.only(
            left: leftPad, right: rightPad, top: topPad, bottom: bottomPad),
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              width: borderWidth,
              color: Colors.transparent,
            )),
        child: child,
      ),
    );
  }
}
