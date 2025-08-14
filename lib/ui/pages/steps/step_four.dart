import 'package:flutter/material.dart';

class StepFour extends StatelessWidget{
  const StepFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StepFourState(),
    );
  }
}

class StepFourState extends StatefulWidget {
  const StepFourState({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StepFourState();
  }
  
}

class _StepFourState extends State<StepFourState> {
  @override
  Widget build(Object context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Строительство сетей',
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