import 'package:flutter/material.dart';

class DogCatCard extends StatelessWidget {
  const DogCatCard({
    Key? key,
    required this.image,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String image;
  final String title;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 230,
        width: 220,
        decoration: BoxDecoration(
          color: Color(0xffFFE3C5),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 3.0, color: const Color(0xff492F24)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 90.0,
              child: Image.asset('assets/icons/$image.png'),
            ),
            SizedBox(height: 20),
            Text(
              '$title',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff492F24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
