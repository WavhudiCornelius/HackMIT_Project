import 'package:HackMIT_Project/Services/posting.dart';
import 'package:HackMIT_Project/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../wrapper.dart';

final Posting postData = Posting();
String userName, post, why1, why2, why3;

class StepperDemo extends StatefulWidget {
  StepperDemo(this.username) : super();
  factory StepperDemo.init({@required username}) {
    userName = username;
    return StepperDemo(username);
  }
  final String username;
  final String title = "Stepper";

  @override
  StepperDemoState createState() => StepperDemoState();
}

class StepperDemoState extends State<StepperDemo> {
  //

  final Posting postData = Posting();

  // submitData() async {
  //   await postData.addPost(
  //       username: userName, post: post, why1: why1, why2: why2, why3: why3);
  // }

  int currentStep = 0;
  List<Step> steps = [
    Step(
      title: Text('Create a topic'),
      content: TextFormField(
        style: TextStyle(color: kWhite),
        onChanged: (value) {
          post = value;
        },
        validator: (value) {
          post = value;
          if (value.isEmpty) {
            return "You can't have an empty name";
          } else if (value.length < 100) {
            return "You need write a little bit";
          } else
            return null;
        },
        decoration: InputDecoration(
            focusColor: kWhite,
            hintStyle: TextStyle(color: kWhite),
            helperStyle: TextStyle(color: kWhite),
            hintText: 'What are you thinking?',
            helperText: 'Brightly detail your topic! 100 characters left'),
      ),
      isActive: true,
    ),
    Step(
      title: Text('Why?'),
      content: TextFormField(
        style: TextStyle(color: kWhite),
        onChanged: (value) {
          why1 = value;
        },
        validator: (value) {
          why1 = value;
          if (value.isEmpty) {
            return "You can't have an empty name";
          } else if (value.length < 40) {
            return "You need write a little bit";
          } else
            return null;
        },
        decoration: InputDecoration(
            hintStyle: TextStyle(color: kWhite),
            helperStyle: TextStyle(color: kWhite),
            hintText: 'Tell us a little bit about it',
            helperText: '60 characters left'),
      ),
      isActive: true,
    ),
    Step(
      title: Text('Why?'),
      content: TextFormField(
        style: TextStyle(color: kWhite),
        // ignore: missing_return
        onChanged: (value) {
          why2 = value;
        },
        validator: (value) {
          why2 = value;
          if (value.isEmpty) {
            return "You can't have an empty name";
          } else if (value.length < 20) {
            return "You need write a little bit";
          } else
            return null;
        },
        decoration: InputDecoration(
            hintStyle: TextStyle(color: kWhite),
            helperStyle: TextStyle(color: kWhite),
            hintText: 'Just more a little bit',
            helperText: '100 characters left'),
      ),
      isActive: true,
    ),
    Step(
      title: Text('Why?'),
      content: TextFormField(
        style: TextStyle(color: kWhite),
        // ignore: missing_return
        onChanged: (value) {
          why3 = value;
        },
        validator: (value) {
          why3 = value;
          if (value.isEmpty) {
            return "You can't have an empty name";
          } else if (value.length < 20) {
            return "You need write a little bit";
          } else
            return null;
        },
        decoration: InputDecoration(
            hintStyle: TextStyle(color: kWhite),
            helperStyle: TextStyle(color: kWhite),
            hintText: 'So, why?',
            helperText: 'Did you think well?'),
      ),
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBlue,
      body: Container(
        color: kDarkBlue,
        child: Theme(
          data: ThemeData(
            primaryColor: kPink,
            buttonColor: kWhite,
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: kWhite,
                  displayColor: kWhite,
                ),
            // textTheme: GoogleFonts.poppinsTextTheme(
            //   Theme.of(context).textTheme,

            // ),
          ),
          child: Stepper(
            currentStep: this.currentStep,
            steps: steps,
            type: StepperType.vertical,
            onStepTapped: (step) {
              setState(() {
                currentStep = step;
              });
            },
            onStepContinue: () async {
              if (currentStep < steps.length - 1) {
                currentStep = currentStep + 1;
              } else {
                await postData.addPost(
                    username: userName,
                    post: post,
                    why1: why1,
                    why2: why2,
                    why3: why3);
              }
              setState(() {});

              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Wrapper()));
            },
            onStepCancel: () {
              setState(() {
                if (currentStep > 0) {
                  currentStep = currentStep - 1;
                } else {
                  currentStep = 0;
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
