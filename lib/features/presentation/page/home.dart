import 'package:flutter/material.dart';
import 'package:vdk_tech/features/presentation/page/steps/step_five.dart';
import 'package:vdk_tech/features/presentation/page/steps/step_four.dart';
import 'package:vdk_tech/features/presentation/page/steps/step_one.dart';
import 'package:vdk_tech/features/presentation/page/steps/step_three.dart';
import 'package:vdk_tech/features/presentation/page/steps/step_two.dart';
import 'package:vdk_tech/features/presentation/widget/app_bar.dart';

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
  final int _totalSteps = 5;

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
      body: Stack(
        children: [
          Stepper(
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.extended(
                    backgroundColor: Colors.blueAccent,
                    onPressed: details.onStepContinue,
                    label: Text(
                      'Далее',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton.extended(
                    backgroundColor: Colors.blueAccent,
                    onPressed: details.onStepCancel,
                    label: Text(
                      'Назад',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ]),
    );
  }

  List<Step> getSteps() => [
    Step(
      title: Flexible(child: Text('Этап 1')),
      subtitle: Flexible(child: Text('Запрос и выдача техусловий')),
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
      title: Flexible(child: Text('Этап 2')),
      subtitle: Flexible(child: Text('Разработка и согласование \nрабочего проекта')),
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
      title: Flexible(child: Text('Этап 3')),
      subtitle: Flexible(child: Text('Заключение договора на технологическое присоединение \nи/или технологический надзор')),
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
      title: Flexible(child: Text('Этап 4')),
      subtitle: Flexible(child: Text('Строительство сетей')),
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
      title: Flexible(child: Text('Этап 5')),
      subtitle: Flexible(child: Text('Сбор исполнительной документации. \nАкт о подключении. \nОткрытие лицевого счёта')),
      content: StepFive(),
      stepStyle: StepStyle(
        connectorColor: Colors.blue.shade400,
        gradient: LinearGradient(
          colors: [Colors.blue.shade900, Colors.blue.shade400],
        ),
      ),
      state: _currentStep <= 4 ? StepState.disabled : StepState.complete,
    ),
  ];
}
