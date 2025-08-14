import 'package:flutter/material.dart';

class StepFive extends StatelessWidget{
  const StepFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StepFiveState(),
    );
  }
}

class StepFiveState extends StatefulWidget {
  const StepFiveState({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StepFiveState();
  }
  
}

class _StepFiveState extends State<StepFiveState> {
  @override
  Widget build(Object context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Сбор исполнительной документации. Акт о подключении. Открытие лицевого счёта',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Container()
              ],
            ),
          ],
    );
  }

  
}