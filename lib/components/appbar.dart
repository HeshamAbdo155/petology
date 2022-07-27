import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/components/components.dart';
import 'package:petology/components/default_button.dart';
import 'package:petology/view/home/home_view.dart';
import 'package:petology/view/login%20view.dart';
import 'package:petology/view/register_view.dart';
import 'package:petology/view/request_view.dart';

import '../view_model/cubit/cubit/cubit.dart';
import '../view_model/cubit/cubit/states.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({
    Key? key,
    this.home = false,
    this.image,
  }) : super(key: key);
  final bool   home;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PetologyCubit, PetologyStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          return Stack(
            children: [
              home
                  ? Container()
                  : Image(
                      image: AssetImage('assets/images/$image.png'),
                      fit: BoxFit.cover,
                    ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 350.0),
                child: SizedBox(
                  height: 50.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: PetologyCubit.get(context).appBarList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          PetologyCubit.get(context).selectedIndex = index;
                          if (PetologyCubit.get(context).selectedIndex == 3)
                            navigateTo(
                              context,
                              RequestScreen(),
                            );
                          if (PetologyCubit.get(context).selectedIndex == 0)
                            navigateTo(
                              context,
                              HomeScreen(),
                            );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                PetologyCubit.get(context).appBarList[index],
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 22,
                                  fontWeight: PetologyCubit.get(context)
                                              .selectedIndex ==
                                          index
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  color: PetologyCubit.get(context)
                                              .selectedIndex ==
                                          index
                                      ? Colors.white
                                      : Color(0xffc9c9c9),
                                ),
                              ),
                              SizedBox(height: 6.0),
                              Container(
                                height: 5.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: PetologyCubit.get(context)
                                              .selectedIndex ==
                                          index
                                      ? Color(0xffFFE3C5)
                                      : Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, left: 40.0, right: 30.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.0,
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/images/petology.png'),
                          ),
                          Spacer(),
                          DefaultButton(
                            onPress: () {
                              navigateTo(
                                context,
                                RegisterScreen(),
                              );
                            },
                            height: 75,
                            width: 130,
                            buttonColor: Colors.white.withOpacity(0.60),
                            radius: 28,
                            title: 'Sign Up',
                            textColor: Color(0xffE1E1E1),
                            borderColor: Color(0xff707070),
                          ),
                          SizedBox(width: 40.0),
                          DefaultButton(
                            onPress: () {
                              navigateTo(context, LoginScreen());
                            },
                            height: 75,
                            width: 130,
                            buttonColor: Colors.transparent,
                            radius: 28.0,
                            title: 'Login',
                            textColor: Color(0xffc9c9c9),
                            borderColor: Color(0xff707070),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
