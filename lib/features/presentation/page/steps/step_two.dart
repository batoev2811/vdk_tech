import 'package:flutter/material.dart';

class StepTwo extends StatelessWidget {
  const StepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(child: StepTwoState());
  }
}

class StepTwoState extends StatefulWidget {
  const StepTwoState({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StepTwoState();
  }
}

class _StepTwoState extends State<StepTwoState> {
  @override
  Widget build(Object context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
        ],
      ),
    );
  }
}
