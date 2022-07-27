import 'package:flutter/material.dart';
import 'package:petology/components/components.dart';
import 'package:petology/view/feed_view.dart';

import '../components/dog_cat_card.dart';

class CatDogScreen extends StatelessWidget {
  const CatDogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Material(
        color: Colors.transparent,
        elevation: 10.0,
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/dogcat-background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/dogcat-background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 805.0, top: 60.0),
              child: SizedBox(
                height: 120,
                child: Image(
                  image: AssetImage('assets/images/Icon_pets1.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(
                children: [
                  Text(
                    'Lets get this right ....',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 55,
                      color: Color(0xff492F24),
                    ),
                  ),
                  SizedBox(height: 45),
                  Text(
                    'What kind of friend you looking for?',
                    style: TextStyle(
                      fontSize: 45,
                      color: Color(0xff492F24),
                    ),
                  ),
                  SizedBox(height: 90.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DogCatCard(
                        image: 'dog',
                        title: 'Dogs',
                        onTap: () {
                          navigateTo(context, FeedScreen());
                        },
                      ),
                      SizedBox(width: 120.0),
                      DogCatCard(
                        image: 'cat',
                        title: 'Cats',
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
