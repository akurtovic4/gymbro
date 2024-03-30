import 'package:flutter/material.dart';
import 'package:gymbro/chooseplan.dart';
import 'package:gymbro/emailverification.dart';
import 'package:gymbro/registration.dart';

import 'intro1.dart';
import 'intro2.dart';
import 'intro3.dart';
import 'intro4.dart';
import 'login.dart';
import 'gender.dart';
import 'age.dart';
import 'weight.dart';
import 'height.dart';
import 'Ziel.dart';
import 'ZielDrei.dart';
import 'FitnessLevel.dart';
import 'Sports.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => intro1(),
        '/intro2': (context) => intro2(),
        '/intro3': (context) => intro3(),
        '/intro4': (context) => intro4(),
        '/chooseplan': (context) => login(),
        '/gender': (context) => gender(),
        '/age': (context) => age(),
        '/weight': (context) => weight(),
        '/height': (context) => height(),
        '/ziel1': (context) => Ziel(),
        '/ziel2': (context) => ZielDrei(),
        '/fitnesslvl': (context) => FitnessLevel(),
        '/sports': (context) => Sports(),





      },
    );
  }
}
