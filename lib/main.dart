import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // darkTheme: ThemeData.dark(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
            ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'SoWhy',
      home: Wrapper(),
    );
  }
}
