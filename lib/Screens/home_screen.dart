import 'package:HackMIT_Project/Services/posting.dart';
import 'package:HackMIT_Project/Widgets/custom_fab.dart';
import 'package:HackMIT_Project/stepper.dart';
import '../constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String route = 'HomeScreen';
  final Posting posting = Posting();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: CustomFAB(
            buttonColor: kPink,
            buttonSize: 70.0,
            iconColor: kWhite,
            iconSize: 36.0,
            onTap: () {
              _navigateToNextScreen(context);
            },
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
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => StepperDemo.init(username: "Pablo")));
  }
}
