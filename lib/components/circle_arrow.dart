import 'package:flutter/material.dart';

class CircleArrow extends StatelessWidget {
  const CircleArrow({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CircleAvatar(
        child: Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
        radius: 28.0,
        backgroundColor: Color(0xff492F24),
      ),
    );
  }
}
