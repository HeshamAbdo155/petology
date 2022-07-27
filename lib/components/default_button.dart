import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.height,
    required this.width,
    required this.buttonColor,
    required this.radius,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0.0,
    required this.title,
    required this.textColor,
    this.fontWeight,
    this.fontSize = 20.0,
    this.iconData,
    this.iconColor,
    this.iconSize,
    required this.onPress,
  }) : super(key: key);

  final double height;
  final double width;
  final Color buttonColor;
  final double radius;
  final Color borderColor;
  final double borderWidth;
  final String title;
  final Color textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final IconData? iconData;
  final Color? iconColor;
  final double? iconSize;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              side: BorderSide(
                color: borderColor,
                width: borderWidth,
              ),
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 40,
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: textColor,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Icon(
                iconData,
                color: iconColor,
                size: iconSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
