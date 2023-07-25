import 'package:flutter/material.dart';

class SetupPage extends StatefulWidget {
  const SetupPage({super.key});

  @override
  State<SetupPage> createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
  int currentStep = 0;

  @override
  void initState() {
    currentStep = 0;
    super.initState();
  }

  void nextStep() {
    if (currentStep >= steps.length - 1) {
      return;
    }
    setState(() {
      currentStep++;
    });
  }

  void previousStep() {
    if (currentStep <= 0) {
      return;
    }
    setState(() {
      currentStep--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: currentStep,
        steps: steps,
        onStepContinue: nextStep,
        onStepCancel: previousStep,
      ),
    );
  }

  Step _welcomeStep(BuildContext context) {
    return const Step(
      title: Text('Welcome!'),
      content: Column(
        children: [
          Text('Welcome to Email Client!'),
        ],
      ),
    );
  }

  Step _addAccountStep(BuildContext context) {
    return const Step(
      title: Text('Add an account'),
      content: Column(
        children: [
          Text('Add an account'),
        ],
      ),
    );
  }

  List<Step> get steps => [
        _welcomeStep(context),
        _addAccountStep(context),
      ];
}
