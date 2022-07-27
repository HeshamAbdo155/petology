import 'package:flutter/material.dart';
import 'package:petology/components/bottombar.dart';
import 'package:petology/components/dropButton.dart';

import '../components/appbar.dart';
import '../components/default_card.dart';

class AdaptScreen extends StatelessWidget {
  const AdaptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                AppBarView(
                  image: 'background-adapt',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 165.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DropButton(title: 'Breed'),
                          SizedBox(width: 50.0),
                          DropButton(title: 'Age'),
                          SizedBox(width: 50.0),
                          DropButton(title: 'Size'),
                          SizedBox(width: 50.0),
                          DropButton(title: 'Good with'),
                        ],
                      ),
                      SizedBox(height: 50.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DropButton(title: 'Gender'),
                          SizedBox(width: 50.0),
                          DropButton(title: 'Color'),
                          SizedBox(width: 50.0),
                          DropButton(title: 'Hair Lenght'),
                          SizedBox(width: 50.0),
                          DropButton(title: 'Care & Behavior'),
                        ],
                      ),
                      SizedBox(height: 100.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultCard(
                            name: 'Caty',
                            image: 'Caty',
                            colorCard: Color(0xffEAEAEA),
                            widthBorder: 0.0,
                            colorButton: Color(0xff492F24),
                            textButtonColor: Color(0xffFFE3C5),
                            widthButton: 0.0,
                            bottomName: 'Petology',
                            bottom: true,
                          ),
                          SizedBox(width: 100.0),
                          DefaultCard(
                            name: 'Elsa',
                            image: 'Elsa',
                            colorCard: Color(0xffEAEAEA),
                            widthBorder: 0.0,
                            colorButton: Color(0xff492F24),
                            textButtonColor: Color(0xffFFE3C5),
                            widthButton: 0.0,
                            bottomName: 'Rawan',
                            bottom: true,
                          ),
                          SizedBox(width: 100.0),
                          DefaultCard(
                            name: 'Doby',
                            image: 'Doby',
                            colorCard: Color(0xffEAEAEA),
                            widthBorder: 0.0,
                            colorButton: Color(0xff492F24),
                            textButtonColor: Color(0xffFFE3C5),
                            widthButton: 0.0,
                            bottomName: 'Rawan',
                            bottom: true,
                          ),
                        ],
                      ),
                      SizedBox(height: 100.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultCard(
                            name: 'Caty',
                            image: 'Caty',
                            colorCard: Color(0xffEAEAEA),
                            widthBorder: 0.0,
                            colorButton: Color(0xff492F24),
                            textButtonColor: Color(0xffFFE3C5),
                            widthButton: 0.0,
                            bottomName: 'Petology',
                            bottom: true,
                          ),
                          SizedBox(width: 100.0),
                          DefaultCard(
                            name: 'Elsa',
                            image: 'Elsa',
                            colorCard: Color(0xffEAEAEA),
                            widthBorder: 0.0,
                            colorButton: Color(0xff492F24),
                            textButtonColor: Color(0xffFFE3C5),
                            widthButton: 0.0,
                            bottomName: 'Rawan',
                            bottom: true,
                          ),
                          SizedBox(width: 100.0),
                          DefaultCard(
                            name: 'Doby',
                            image: 'Doby',
                            colorCard: Color(0xffEAEAEA),
                            widthBorder: 0.0,
                            colorButton: Color(0xff492F24),
                            textButtonColor: Color(0xffFFE3C5),
                            widthButton: 0.0,
                            bottomName: 'Rawan',
                            bottom: true,
                          ),
                        ],
                      ),
                      SizedBox(height: 200.0),
                      BottomBar(),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
