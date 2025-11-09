import 'package:flutter/material.dart';

class StepThree extends StatelessWidget {
  const StepThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(child: StepThreeState());
  }
}

class StepThreeState extends StatefulWidget {
  const StepThreeState({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StepThreeState();
  }
}

class _StepThreeState extends State<StepThreeState> {
  @override
  Widget build(Object context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Для строительства сетей загрузите необходимые документы',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Внимание!' 
                'Если ранее договор был подписан (на руках /обращались ранее), то загрузите договор для проверки'
                'Если строительство сетей будет производиться через частную подрядную организацию, то загрузите договор на строительство сетей с частной подрядной организацией'
                '\nи договор с МУП Водоканал на осуществление технического надзора (контроля).',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
