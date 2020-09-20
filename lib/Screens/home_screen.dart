import 'package:HackMIT_Project/Services/viewposts.dart';
import 'package:flutter/material.dart';

import '../Services/posting.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  static const String route = 'HomeScreen';
  final Posting posting = Posting();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBlue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Posts',
                style: TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ViewPosts(
                  postsOf: 'Pablo',
                  username: 'Pablo',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
