import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/images/bottom_image.png'),
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 320.0),
              child: SizedBox(
                height: 120,
                child: Image(
                  image: AssetImage('assets/images/Icon_pets2.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 390.0),
              child: SizedBox(
                height: 120,
                child: Image(
                  image: AssetImage('assets/images/Icon_pets2.png'),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 45.0, left: 75.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'For any questions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xffFFE3C5),
                    ),
                  ),
                  SizedBox(height: 60.0),
                  Row(
                    children: [
                      SizedBox(
                        height: 35.0,
                        child: Image.asset('assets/icons/email.png'),
                      ),
                      SizedBox(width: 30.0),
                      Text(
                        'Email@petology.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xffAE957B),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 60.0),
                  Row(
                    children: [
                      SizedBox(
                        height: 35.0,
                        child: Image.asset('assets/icons/phone.png'),
                      ),
                      SizedBox(width: 30.0),
                      Text(
                        '(+2)0123456789',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xffAE957B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 125.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'We are waiting you',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xffFFE3C5),
                    ),
                  ),
                  SizedBox(height: 60.0),
                  Row(
                    children: [
                      SizedBox(
                        height: 35.0,
                        child: Image.asset('assets/icons/location-on.png'),
                      ),
                      SizedBox(width: 30.0),
                      Text(
                        'First settlement/Cairo',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xffAE957B),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 60.0),
                  Row(
                    children: [
                      SizedBox(
                        height: 35.0,
                        child: Image.asset('assets/icons/location-on.png'),
                      ),
                      SizedBox(width: 30.0),
                      Text(
                        'Cairo/Egypt',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xffAE957B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  height: 345.0,
                  child: Image.asset('assets/images/bottom-dog.png'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
