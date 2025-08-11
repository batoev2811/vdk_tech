import 'package:flutter/material.dart';
import 'package:vdk_tech/ui/pages/steps/step_one.dart';

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
  int currentStep = 0;


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600 ;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 71, 161),
      ),
      body: Stepper(
        type: isSmallScreen ? StepperType.vertical : StepperType.horizontal,
        steps: getSteps(),
        currentStep: currentStep,
        onStepContinue: () {
          final isLastStep = currentStep == getSteps().length - 1;
          if (isLastStep) {
            
          }
          setState(() => currentStep += 1);
        },
        onStepCancel: currentStep == 0
            ? null
            : () => setState(() => currentStep -= 1),
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
      isActive: currentStep >= 0,
      stepStyle: StepStyle(
        connectorColor: Colors.blue.shade400,
        gradient: LinearGradient(colors: [
          Colors.blue.shade900,
          Colors.blue.shade400,
        ])
      ),
      state: StepState.complete,
    ),
    Step(
      isActive: currentStep >= 1,
      title: Text('Этап 2'),
      content: Container(),
      stepStyle: StepStyle(
        connectorColor: Colors.blue.shade400,
        gradient: LinearGradient(colors: [
          Colors.blue.shade900,
          Colors.blue.shade400,
        ])
      ),
      state: currentStep < 1 ? StepState.disabled : StepState.complete,
    ),
    Step(
      isActive: currentStep >= 2,
      title: Text('Этап 3'),
      content: Container(),
      stepStyle: StepStyle(
        connectorColor: Colors.blue.shade400,
        gradient: LinearGradient(colors: [
          Colors.blue.shade900,
          Colors.blue.shade400,
        ])
      ),
      state: currentStep < 2 ? StepState.disabled : StepState.complete,
    ),
    Step(
      isActive: currentStep >= 3,
      title: Text('Этап 4'),
      content: Container(),
      stepStyle: StepStyle(
        connectorColor: Colors.blue.shade400,
        gradient: LinearGradient(colors: [
          Colors.blue.shade900,
          Colors.blue.shade400,
        ])
      ),
      state: currentStep < 3 ? StepState.disabled : StepState.complete,
    ),
    Step(
      isActive: currentStep >= 4,
      title: Text('Этап 5'),
      content: Container(),
      stepStyle: StepStyle(
        connectorColor: Colors.blue.shade400,
        gradient: LinearGradient(colors: [
          Colors.blue.shade900,
          Colors.blue.shade400,
        ])
      ),
      state: currentStep == 4 ? StepState.disabled : StepState.editing,
    ),
  ];
}
