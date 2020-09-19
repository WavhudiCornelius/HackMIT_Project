import 'package:HackMIT_Project/Services/posting.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String route = 'HomeScreen';
  final Posting posting = Posting();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          // child: FlatButton(
          //     onPressed: () async {
          //       // await posting.addPost(
          //       //     username: 'ajay',
          //       //     post: 'this post',
          //       //     why1: 'hello',
          //       //     why2: 'hhehe',
          //       //     why3: 'plss');
          //     await posting.deletePost(
          //           username: 'ajay', docId: 'Bwim9RHEZ6ZMQeEGBdYE');
          //     },
          //     child: Text('test')),
          ),
    );
  }
}
