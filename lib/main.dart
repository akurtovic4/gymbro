import 'package:flutter/material.dart';
import 'package:gymbro/chooseplan.dart';

import 'intro1.dart';
import 'intro2.dart';
import 'intro3.dart';
import 'intro4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => chooseplan(),
        '/intro2': (context) => intro2(),
        '/intro3': (context) => intro3(),
        '/intro4': (context) => intro4(),



      },
    );
  }
}
