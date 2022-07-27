import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/view/adapt_view.dart';
import 'package:petology/view/cat_dog_view.dart';
import 'package:petology/view/details_view.dart';
import 'package:petology/view/help_view.dart';
import 'package:petology/view/feed_view.dart';
import 'package:petology/view/home/home_view.dart';
import 'package:petology/view/login%20view.dart';
import 'package:petology/view/register_view.dart';
import 'package:petology/view/request_view.dart';
import 'package:petology/view_model/cubit/cubit/cubit.dart';
import 'package:petology/view_model/cubit/cubit/states.dart';
import 'package:petology/view_model/network/remote/dio_helper.dart';

void main() {
  DioHelper.init();
  runApp(const Petology());
}

class Petology extends StatelessWidget {
  const Petology({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => PetologyCubit(),
      child: BlocConsumer<PetologyCubit,PetologyStates>(
          listener: (BuildContext context, state) {},
          builder: (BuildContext context, Object? state) {
            return MaterialApp(
              title: 'Petology',
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
            );
          }),
    );
  }
}
