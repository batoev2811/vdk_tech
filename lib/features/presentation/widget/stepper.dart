import 'package:flutter/material.dart';
import 'package:vdk_tech/features/presentation/page/steps/step_five.dart' show StepFive;
import 'package:vdk_tech/features/presentation/page/steps/step_four.dart' show StepFour;
import 'package:vdk_tech/features/presentation/page/steps/step_one.dart' show StepOne;
import 'package:vdk_tech/features/presentation/page/steps/step_three.dart' show StepThree;
import 'package:vdk_tech/features/presentation/page/steps/step_two.dart' show StepTwo;

List<Step> getSteps(dynamic _currentStep) => [
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