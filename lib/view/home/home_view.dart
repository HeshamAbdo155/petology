import 'package:flutter/material.dart';
import 'package:petology/components/appbar.dart';
import 'package:petology/components/circle_arrow.dart';
import 'package:petology/components/default_card.dart';
import 'package:petology/components/dog_cat_card.dart';
import 'package:petology/view/adapt_view.dart';
import 'package:petology/view/cat_dog_view.dart';
import 'package:petology/view/details_view.dart';
import 'package:petology/view/feed_view.dart';
import 'package:petology/view/help_view.dart';
import '../../components/bottombar.dart';
import '../../components/circle_information.dart';
import '../../components/components.dart';
import '../../components/default_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                const Image(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 410.0, left: 120),
                      child: DefaultButton(
                        onPress: () {
                          navigateTo(
                            context,
                            HelpScreen(),
                          );
                        },
                        height: 70,
                        width: 375,
                        buttonColor: Colors.white,
                        radius: 60.0,
                        title: 'Help them',
                        textColor: Colors.black,
                        fontWeight: FontWeight.bold,
                        iconData: Icons.arrow_forward_ios_rounded,
                        iconColor: Colors.black,
                        iconSize: 30,
                      ),
                    ),
                    Spacer(),
                    Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 200.0, right: 50.0),
                          child: SizedBox(
                            width: 620,
                            child: Image(
                              image: AssetImage('assets/images/egg_circle.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 330.0, left: 80.0),
                          child: SizedBox(
                            width: 500,
                            height: 400,
                            child: Image(
                              image: AssetImage('assets/images/shadow.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 140),
                          child: SizedBox(
                              height: 570,
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/home_dog.png'))),
                        )
                      ],
                    )
                  ],
                ),
                AppBarView(home: true),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 700.0, left: 40),
                      child: SizedBox(
                        height: 550,
                        child: Image(
                          image: AssetImage('assets/images/cat_dog_shadow.png'),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 850.0, right: 150.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About Petology',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                            ),
                          ),
                          SizedBox(height: 40),
                          SizedBox(
                            height: 250,
                            width: 450,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, '
                              'sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, '
                              'sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '
                              'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. '
                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,'
                              ' sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, '
                              'sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '
                              'Stet clita kasd gubergren, no sea takimata sanctus est .',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Image(
                  image: AssetImage('assets/images/BackGround_grey.png'),
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 800.0, top: 85.0),
                  child: SizedBox(
                    height: 120,
                    child: Image(
                      image: AssetImage('assets/images/Icon_pets1.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 105.0),
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
                          GestureDetector(
                              onTap: () {
                                navigateTo(
                                  context,
                                  AdaptScreen(),
                                );
                              },
                              child: DogCatCard(
                                image: 'dog',
                                title: 'Dogs',
                                onTap: () {
                                  navigateTo(
                                    context,
                                    AdaptScreen(),
                                  );
                                },
                              )),
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
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 795.0, top: 85.0),
                  child: SizedBox(
                    height: 120,
                    child: Image(
                      image: AssetImage('assets/images/Icon_pets1.png'),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Column(
                      children: [
                        Text(
                          'Our friends who ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'looking for a house ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 40.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleArrow(icon: Icons.arrow_back_ios_rounded),
                            DefaultCard(
                              onPresss: () {},
                              name: 'Caty',
                              image: 'Caty',
                              colorBorder: Color(0xff492F24),
                              textButtonColor: Color(0xff492F24),
                              colorButtonBorder: Color(0xffFFE3C5),
                            ),
                            SizedBox(width: 80.0),
                            DefaultCard(
                              onPresss: () {
                                navigateTo(
                                  context,
                                  DetailsScreen(),
                                );
                              },
                              name: 'Elsa',
                              image: 'Elsa',
                              colorBorder: Color(0xff492F24),
                              textButtonColor: Color(0xff492F24),
                              colorButtonBorder: Color(0xffFFE3C5),
                            ),
                            SizedBox(width: 80.0),
                            DefaultCard(
                              onPresss: () {},
                              name: 'Doby',
                              image: 'Doby',
                              colorBorder: Color(0xff492F24),
                              textButtonColor: Color(0xff492F24),
                              colorButtonBorder: Color(0xffFFE3C5),
                            ),
                            CircleArrow(icon: Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                        SizedBox(height: 50.0),
                        DefaultButton(
                          onPress: () {
                            navigateTo(
                              context,
                              CatDogScreen(),
                            );
                          },
                          height: 60,
                          width: 310,
                          buttonColor: Color(0xff492F24),
                          radius: 60.0,
                          title: 'Show more',
                          textColor: Color(0xffFFE3C5),
                          fontWeight: FontWeight.bold,
                          iconData: Icons.arrow_forward_ios,
                          iconColor: Color(0xffFFE3C5),
                          iconSize: 30,
                        ),
                        SizedBox(height: 50.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Image(
                  image: AssetImage('assets/images/big_grey_background.png'),
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 810.0, top: 55.0),
                  child: SizedBox(
                    height: 120,
                    child: Image(
                      image: AssetImage('assets/images/Icon_pets1.png'),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 85.0),
                    child: Column(
                      children: [
                        Text(
                          'How to take care of',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'your friends?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 125.0),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 120.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleInformation(
                                    onpress: () {
                                      navigateTo(
                                        context,
                                        FeedScreen(),
                                      );
                                    },
                                    title: 'Pet food',
                                    image: 'Group 75', //45 padding
                                  ),
                                  CircleInformation(
                                    onpress: () {},
                                    image: 'transportation',
                                    title: 'Transportation',
                                    leftPadding: 15.0,
                                  ),
                                  CircleInformation(
                                    onpress: () {},
                                    image: 'toys',
                                    title: 'Toys',
                                    leftPadding: 40.0,
                                  ),
                                  CircleInformation(
                                    onpress: () {},
                                    image: 'bowl',
                                    title: 'Bowls and Cups',
                                    leftPadding: 10.0,
                                  ),
                                ],
                              ),
                              SizedBox(height: 70.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleInformation(
                                    onpress: () {},
                                    image: 'Inoculation',
                                    title: 'Inoculation',
                                    leftPadding: 35.0,
                                  ),
                                  CircleInformation(
                                    onpress: () {},
                                    image: 'bed',
                                    title: 'Sleeping Area',
                                    leftPadding: 20.0,
                                  ),
                                  CircleInformation(
                                    onpress: () {},
                                    image: 'vitamins',
                                    title: 'Vitamins',
                                    leftPadding: 45.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
