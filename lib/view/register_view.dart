import 'package:flutter/material.dart';
import 'package:petology/components/appbar.dart';
import 'package:petology/components/bottombar.dart';
import 'package:petology/components/components.dart';
import 'package:petology/components/default_container.dart';
import 'package:petology/components/default_text_form.dart';
import 'package:petology/view/login%20view.dart';

import '../components/default_button.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Stack(
                children: [
                  AppBarView(
                    image: 'appbar-image',
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 200.0),
                      child: Container(
                        height: 1320,
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
                                'Sign up',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 55,
                                  color: Color(0xff492F24),
                                ),
                              ),
                              SizedBox(height: 80.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultButton(
                                    onPress: () {},
                                    height: 60,
                                    width: 240,
                                    fontSize: 30.0,
                                    buttonColor: Colors.blue,
                                    radius: 35.0,
                                    title: '   Facebook',
                                    textColor: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(width: 120.0),
                                  DefaultButton(
                                    onPress: () {},
                                    height: 60,
                                    width: 240,
                                    fontSize: 30.0,
                                    buttonColor: Colors.white,
                                    radius: 35.0,
                                    title: '   Google',
                                    textColor: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 3.0,
                                    width: 260.0,
                                    color: Color(0xff492F24),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Text(
                                      'Or',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Color(0xff492F24),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 3.0,
                                    width: 260.0,
                                    color: Color(0xff492F24),
                                  )
                                ],
                              ),
                              SizedBox(height: 40.0),
                              DefaultContainer(
                                child: DefaultTextForm(
                                  label: 'First name',
                                  type: TextInputType.name,
                                  controller: firstNameController,
                                  validate: (String) {},
                                ),
                              ),
                              SizedBox(height: 50.0),
                              DefaultContainer(
                                child: DefaultTextForm(
                                  label: 'Last name',
                                  type: TextInputType.name,
                                  controller: lastNameController,
                                  validate: (String) {},
                                ),
                              ),
                              SizedBox(height: 50.0),
                              DefaultContainer(
                                child: DefaultTextForm(
                                  label: 'Email',
                                  type: TextInputType.emailAddress,
                                  controller: emailController,
                                  validate: (String) {},
                                ),
                              ),
                              SizedBox(height: 50.0),
                              DefaultContainer(
                                child: DefaultTextForm(
                                  label: 'Password',
                                  type: TextInputType.visiblePassword,
                                  controller: passwordController,
                                  validate: (String) {},
                                ),
                              ),
                              SizedBox(height: 50.0),
                              DefaultContainer(
                                child: DefaultTextForm(
                                  label: 'Re-Enter Password',
                                  type: TextInputType.visiblePassword,
                                  controller: passwordController,
                                  validate: (String) {},
                                ),
                              ),
                              SizedBox(height: 50.0),
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
                              SizedBox(height: 90.0),
                              DefaultButton(
                                onPress: () {},
                                height: 85,
                                width: 600,
                                fontSize: 30.0,
                                buttonColor: Color(0xff492F24),
                                radius: 35.0,
                                title: '   Sign up',
                                textColor: Color(0xffFFE3C5),
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 40.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Already have an Account ? ',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color(0xff492F24),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      navigateTo(
                                        context,
                                        LoginScreen(),
                                      );
                                    },
                                    child: Text(
                                      'Login ',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff492F24),
                                      ),
                                    ),
                                  )
                                ],
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
