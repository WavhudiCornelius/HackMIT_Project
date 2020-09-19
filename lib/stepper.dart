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
      content: Text('Hello!'),
      isActive: true,
    ),
    Step(
      title: Text('Why?'),
      content: Text('World!'),
      isActive: true,
    ),
    Step(
      title: Text('Why?'),
      content: Text('Hello World!'),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text('Why?'),
      content: Text('Hello World!'),
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