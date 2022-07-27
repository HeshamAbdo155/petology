import 'package:flutter/material.dart';
import 'package:petology/view/adapt_view.dart';
import 'package:petology/view/cat_dog_view.dart';
import 'package:petology/view/details_view.dart';
import 'package:petology/view/help_view.dart';
import 'package:petology/view/home/feed_view.dart';
import 'package:petology/view/home/home_view.dart';
import 'package:petology/view/request_view.dart';

void main() {
  runApp(const Petology());
}

class Petology extends StatelessWidget {
  const Petology({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petology',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: DetailsScreen(),
    );
  }
}
