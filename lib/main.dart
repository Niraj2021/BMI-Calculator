import 'package:flutter/material.dart';

import 'input_page.dart';

void main()=>runApp(MyBmiApp());


class MyBmiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI",
      theme:ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white)
        )
      ),
      home: IndexPage(),
    );
  }
}







