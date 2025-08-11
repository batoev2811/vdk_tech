import 'package:flutter/material.dart';

class StepOne extends StatelessWidget{
  const StepOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StepOneState(),
    );
  }
}

class StepOneState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StepOneState();
  }
  
}

class _StepOneState extends State<StepOneState> {
  @override
  Widget build(Object context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Сбор пакета документов',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            
          ],
    );
  }

  
}