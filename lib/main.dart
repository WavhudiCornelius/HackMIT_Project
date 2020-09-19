import 'package:flutter/material.dart';

import 'wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SoWhy',
      home: Wrapper(),
      // initialRoute: HomeScreen.route,
      // routes: {
      //   HomeScreen.route: (context) => HomeScreen(),
      // },
    );
  }
}
