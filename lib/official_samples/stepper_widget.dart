import 'package:flutter/material.dart';
import 'package:flutterrampupdemoapp/official_samples/base_sample_stateful_widget.dart';

class StepperWidget extends BaseSampleStatefulWidget {
  static String name = 'Stepper';
  static String route = '/ui/Stepper';

  @override
  BaseSampleStatefulWidgetState createState() => _StepperWidget();
}

class _StepperWidget extends BaseSampleStatefulWidgetState<StepperWidget> {
  @override
  String getFilePath() {
    return 'lib/official_samples/stepper_widget.dart';
  }

  @override
  String getTitle() {
    return StepperWidget.name;
  }

  //<code>
  int _currentStep = 0;
  @override
  Widget buildBody(BuildContext context) {
    return Stepper(
      currentStep: _currentStep,
      onStepContinue: () {
        if (_currentStep >= 4) return;
        setState(() {
          _currentStep += 1;
        });
      },
      onStepCancel: () {
        if (_currentStep <= 0) return;
        setState(() {
          _currentStep -= 1;
        });
      },
      steps: const <Step>[
        Step(
          title: Text('Step 1'),
          content: SizedBox(
            width: 100.0,
            height: 100.0,
          ),
        ),
        Step(
          title: Text('Step 2'),
          content: SizedBox(
            width: 100.0,
            height: 100.0,
          ),
        ),
        Step(
          title: Text('Step 3'),
          content: SizedBox(
            width: 100.0,
            height: 100.0,
          ),
        ),
        Step(
          title: Text('Step 4'),
          content: SizedBox(
            width: 100.0,
            height: 100.0,
          ),
        ),
        Step(
          title: Text('Step 5'),
          content: SizedBox(
            width: 100.0,
            height: 100.0,
          ),
        ),
      ],
    );
  }
//<code>
}
