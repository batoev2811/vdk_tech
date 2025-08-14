import 'package:flutter/material.dart';
import 'package:vdk_tech/ui/pages/steps/step_five.dart';
import 'package:vdk_tech/ui/pages/steps/step_four.dart';
import 'package:vdk_tech/ui/pages/steps/step_one.dart';
import 'package:vdk_tech/ui/pages/steps/step_three.dart';
import 'package:vdk_tech/ui/pages/steps/step_two.dart';
import 'package:vdk_tech/ui/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(Object context) {
    return Material(child: HomePageState());
  }
}

class HomePageState extends StatefulWidget {
  const HomePageState({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePageState> {
  int _currentStep = 0;
  int _totalSteps = 5;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return Scaffold(
      appBar: GradientAppBar(
        title: 'МУП Водоканал',
        gradientBegin: Colors.blue.shade900,
        gradientEnd: Colors.blue.shade500,
      ),
      body: Stepper(
        type: isSmallScreen ? StepperType.vertical : StepperType.horizontal,
        steps: getSteps(),
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep < _totalSteps - 1) {
            setState(() {
              _currentStep++;
            });
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep--;
            });
          }
        },
        controlsBuilder: (context, details) {
          return Container(
            margin: EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: details.onStepContinue,
                    child: Text('Далее'),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: details.onStepCancel,
                    child: Text('Назад'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  List<Step> getSteps() => [
    Step(
      title: Text('Этап 1'),
      content: StepOne(),
      isActive: _currentStep >= 0,
      stepStyle: StepStyle(
        connectorColor: Colors.blue.shade400,
        gradient: LinearGradient(
          colors: [Colors.blue.shade900, Colors.blue.shade400],
        ),
      ),
      state: StepState.complete,
    ),
    Step(
      isActive: _currentStep >= 1,
      title: Text('Этап 2'),
      content: StepTwo(),
      stepStyle: StepStyle(
        connectorColor: Colors.blue.shade400,
        gradient: LinearGradient(
          colors: [Colors.blue.shade900, Colors.blue.shade400],
        ),
      ),
      state: _currentStep < 1 ? StepState.disabled : StepState.complete,
    ),
    Step(
      isActive: _currentStep >= 2,
      title: Text('Этап 3'),
      content: StepThree(),
      stepStyle: StepStyle(
        connectorColor: Colors.blue.shade400,
        gradient: LinearGradient(
          colors: [Colors.blue.shade900, Colors.blue.shade400],
        ),
      ),
      state: _currentStep < 2 ? StepState.disabled : StepState.complete,
    ),
    Step(
      isActive: _currentStep >= 3,
      title: Text('Этап 4'),
      content: StepFour(),
      stepStyle: StepStyle(
        connectorColor: Colors.blue.shade400,
        gradient: LinearGradient(
          colors: [Colors.blue.shade900, Colors.blue.shade400],
        ),
      ),
      state: _currentStep < 3 ? StepState.disabled : StepState.complete,
    ),
    Step(
      isActive: _currentStep >= 4,
      title: Text('Этап 5'),
      content: StepFive(),
      stepStyle: StepStyle(
        connectorColor: Colors.blue.shade400,
        gradient: LinearGradient(
          colors: [Colors.blue.shade900, Colors.blue.shade400],
        ),
      ),
      state: _currentStep == 4 ? StepState.disabled : StepState.complete,
    ),
  ];
}
