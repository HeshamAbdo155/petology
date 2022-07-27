import 'package:flutter/material.dart';

class CircleInformation extends StatelessWidget {
  const CircleInformation({
    Key? key,
    required this.image,
    required this.title,
    this.leftPadding = 45.0,
  }) : super(key: key);
  final String image;
  final String title;
  final double leftPadding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: CircleAvatar(
            radius: 95,
            backgroundColor: Color(0xff492F24),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: leftPadding),
          child: Column(
            children: [
              SizedBox(
                  height: 120,
                  child: Image.asset(
                    'assets/icons/$image.png',
                  )),
              SizedBox(
                height: 40.0,
              ),
              Text(
                '$title',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFFE3C5),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
