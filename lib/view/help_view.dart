import 'package:flutter/material.dart';
import 'package:petology/components/appbar.dart';
import 'package:petology/components/bottombar.dart';
import 'package:petology/components/default_container.dart';
import 'package:petology/components/default_text_form.dart';

import '../components/default_button.dart';

class HelpScreen extends StatelessWidget {
  HelpScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var locationController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Stack(
                children: [
                  AppBarView(
                    image: 'background-help',
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 180.0),
                      child: Container(
                        height: 1125,
                        width: 900,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(88),
                          border: Border.all(
                            width: 3.0,
                            color: const Color(0xff492F24),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Help your friend',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 55,
                                  color: Color(0xff492F24),
                                ),
                              ),
                              SizedBox(height: 90.0),
                              SizedBox(
                                height: 100,
                                child: Image.asset('assets/icons/camera.png'),
                              ),
                              SizedBox(height: 80.0),
                              DefaultContainer(
                                leftPad: 50.0,
                                rightPad: 20.0,
                                topPad: 12.0,
                                child: DropdownButton<String>(
                                  hint: const Text(
                                    'Category',
                                    style: TextStyle(
                                      color: Color(0xff707070),
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  underline: Container(),
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xff492F24),
                                  ),
                                  iconSize: 45.0,
                                  isExpanded: true,
                                  dropdownColor: Colors.white,
                                  items: <String>[
                                    'Egypt',
                                    'Brazil',
                                    'France',
                                    'Australia'
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (selectedCounty) {},
                                ),
                              ),
                              SizedBox(height: 60.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10.0, left: 28.0),
                                    child: Text(
                                      'Detect your current location',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff492F24),
                                      ),
                                    ),
                                  ),
                                  DefaultContainer(
                                    child: DefaultTextForm(
                                      label: 'Location',
                                      suffix: Icons.location_on,
                                      type: TextInputType.name,
                                      controller: locationController,
                                      validate: (String) {},
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 60.0),
                              DefaultContainer(
                                child: DefaultTextForm(
                                  label: 'Phone number',
                                  type: TextInputType.phone,
                                  controller: phoneController,
                                  validate: (String) {},
                                ),
                              ),
                              SizedBox(height: 60.0),
                              DefaultButton(
                                onPress: () {},
                                height: 85,
                                width: 600,
                                fontSize: 30.0,
                                buttonColor: Color(0xff492F24),
                                radius: 35.0,
                                title: '   Send',
                                textColor: Color(0xffFFE3C5),
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 25.0),
                              DefaultButton(
                                onPress: () {},
                                height: 90,
                                width: 600,
                                buttonColor: Color(0xffFFE3C5),
                                radius: 40.0,
                                title: '   Call',
                                textColor: Color(0xff492F24),
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80.0),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
