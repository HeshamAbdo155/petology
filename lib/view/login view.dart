import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/components/appbar.dart';
import 'package:petology/components/bottombar.dart';
import 'package:petology/components/components.dart';
import 'package:petology/components/default_container.dart';
import 'package:petology/components/default_text_form.dart';
import 'package:petology/view/register_view.dart';

import '../components/default_button.dart';
import '../view_model/cubit/cubit/cubit.dart';
import '../view_model/cubit/cubit/states.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PetologyCubit, PetologyStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
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
                        Padding(
                          padding: const EdgeInsets.only(top: 170.0),
                          child: Center(
                            child: SizedBox(
                              child: Image.asset(
                                  'assets/images/Dog paw-cuate.png'),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 510.0),
                            child: Container(
                              height: 950,
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
                                      'Login',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 55,
                                        color: Color(0xff492F24),
                                      ),
                                    ),
                                    SizedBox(height: 80.0),
                                    DefaultContainer(
                                      child: DefaultTextForm(
                                        label: 'Email',
                                        type: TextInputType.phone,
                                        controller: emailController,
                                        validate: (String) {},
                                      ),
                                    ),
                                    SizedBox(height: 50.0),
                                    DefaultContainer(
                                      child: DefaultTextForm(
                                        label: 'Password',
                                        type: TextInputType.phone,
                                        controller: passwordController,
                                        validate: (String) {},
                                      ),
                                    ),
                                    SizedBox(height: 90.0),
                                    DefaultButton(
                                      onPress: () {
                                        if (formKey.currentState!.validate()) {
                                          PetologyCubit.get(context).userLogin(
                                              email: emailController.text,
                                              password:
                                                  passwordController.text);
                                        }
                                      },
                                      height: 85,
                                      width: 600,
                                      fontSize: 30.0,
                                      buttonColor: Color(0xff492F24),
                                      radius: 35.0,
                                      title: '   Login',
                                      textColor: Color(0xffFFE3C5),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(height: 40.0),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                    SizedBox(height: 60.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Dont have an Account ? ',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Color(0xff492F24),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            navigateTo(
                                              context,
                                              RegisterScreen(),
                                            );
                                          },
                                          child: Text(
                                            'Sign up ',
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
        });
  }
}
