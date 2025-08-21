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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
      ),
    );
  }

  
}