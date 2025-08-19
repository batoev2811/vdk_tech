import 'package:flutter/material.dart';

class StepThree extends StatelessWidget{
  const StepThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StepThreeState(),
    );
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Заключение договора на технологическое присоединение и/или технологический надзор',
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