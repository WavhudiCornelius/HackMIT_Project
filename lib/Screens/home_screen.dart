import 'package:flutter/material.dart';

import '../Services/posting.dart';
import '../Widgets/post_card.dart';
import '../constants.dart';

class HomeScreen extends StatelessWidget {
  static const String route = 'HomeScreen';
  final Posting posting = Posting();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBlue,
      body: Container(
        child: Center(
          child: PostCard(
            username: 'Ashish',
            post: 'Chocolate is bad.',
            why1: 'I dont know',
            why2: 'I dont know',
            why3: 'I dont know',
            timeOfThePost: DateTime.now(),
            deletePost: null,
            editPost: null,
            replyToPost: null,
            onTap: () {},
            color: kDarkGrey,
            profilePhoto: Image.asset(
              './1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),

        // child: FlatButton(
        //     onPressed: () async {
        //       // await posting.addPost(
        //       // username: 'ajay',
        //       // post: 'this post',
        //       // why1: 'hello',
        //       // why2: 'hhehe',
        //       // why3: 'plss');
        //       await posting.replyPost(
        //           postedUserName: 'ajay',
        //           replierName: 'ashish',
        //           docId: 'FFsTqHRU38pzI1sGkcuMX',
        //           reply: 'this post',
        //           why1: 'hello',
        //           why2: 'hhehe',
        //           why3: 'plss');
        //       // await posting.deletePost(
        //       //     username: 'ajay', docId: 'Bwim9RHEZ6ZMQeEGBdYE');
        //     },
        //     child: Text('test')),
      ),
    );
  }
}
