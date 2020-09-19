import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  StepperDemo() : super();

  final String title = "Stepper";

  @override
  StepperDemoState createState() => StepperDemoState();
}

class StepperDemoState extends State<StepperDemo> {
  //
  int currentStep = 0;
  List<Step> steps = [
    Step(
      title: Text('Create a topic'),
      content: TextFormField(
        // ignore: missing_return
        validator: (value) {
          if (value.isEmpty) {
            return "You can't have an empty name.";
          }

          if (value.length < 100) {
            return "You need write a little bit.";
          }
        },
        decoration: InputDecoration(
            hintText: 'What you are thinking?',
            helperText: 'This has to be over two characters in length.'),
      ),
      isActive: true,
    ),
    Step(
      title: Text('Why?'),
      content: TextFormField(
        // ignore: missing_return
        validator: (value) {
          if (value.isEmpty) {
            return "You can't have an empty name.";
          }

          if (value.length < 40) {
            return "You need write a little bit.";
          }
        },
        decoration: InputDecoration(
            hintText: 'Tell us a little bit about it',
            helperText: 'This has to be over two characters in length.'),
      ),
      isActive: true,
    ),
    Step(
      title: Text('Why?'),
      content: TextFormField(
        // ignore: missing_return
        validator: (value) {
          if (value.isEmpty) {
            return "You can't have an empty name.";
          }

          if (value.length < 20) {
            return "You need write a little bit.";
          }
        },
        decoration: InputDecoration(
            hintText: 'Just more a little bit about it',
            helperText: 'This has to be over two characters in length.'),
      ),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text('Why?'),
      content: TextFormField(
        // ignore: missing_return
        validator: (value) {
          if (value.isEmpty) {
            return "You can't have an empty name.";
          }

          if (value.length < 20) {
            return "You need write a little bit.";
          }
        },
        decoration: InputDecoration(
            hintText: 'So, why?',
            helperText: 'This has to be over two characters in length.'),
      ),
      state: StepState.complete,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Simple Stepper Demo"),
      ),
      // Body
      body: Container(
        child: Stepper(
          currentStep: this.currentStep,
          steps: steps,
          type: StepperType.vertical,
          onStepTapped: (step) {
            setState(() {
              currentStep = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (currentStep < steps.length - 1) {
                currentStep = currentStep + 1;
              } else {
                currentStep = 0;
              }
            });
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
    );
  }
}