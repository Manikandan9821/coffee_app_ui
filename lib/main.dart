import 'package:flutter/material.dart';

import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop',
      theme: ThemeData(
        primaryColor: Color(0xFF9B6348),
        textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 25.0,
              color: Colors.black,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
            ),
            bodyText1: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            headline6: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 18.0),),

        scaffoldBackgroundColor: Color(0xFFFBFBFB),
      ),
      home: HomeScreen(),
    );
  }
}
