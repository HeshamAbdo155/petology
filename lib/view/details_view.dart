import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../components/bottombar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                AppBarView(
                  image: 'backgroun-feed',
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      height: 550,
                      child: Image(
                        image: AssetImage('assets/images/dog-details.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 40.0, left: 60.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Elsa',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xff492F24),
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Row(
                    children: [
                      Text(
                        'Shared By :  ',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xff492F24),
                        ),
                      ),
                      Text(
                        'Rawan Tarek',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff492F24),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.whatsapp,
                        size: 50,
                        color: Color(0xff492F24),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.call,
                        size: 50,
                        color: Color(0xff492F24),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0),
                  Text(
                    'Domestic Short Hair  Fredericton, NB',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff492F24),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    'Adult  Female  Medium  Tabby (Brown / Chocolate)',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff492F24),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xff492F24),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 1000.0),
                    child: Text(
                      'HOUSE-TRAINED Yes HEALTH Vaccinations up to date, spayed / neutered. GOOD IN A HOME WITH Other cats.PREFERS A HOME WITHOUTChildren.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xff492F24),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 600.0),
                    child: Text(
                      'Petfinder recommends that you should always take reasonable security steps before making adabtion.',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff492F24),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Meet Elsa',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xff492F24),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 300.0),
                    child: Text(
                      'Hi,Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xff492F24),
                      ),
                    ),
                  ),
                  SizedBox(height: 50 ),

                ],
              ),
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
