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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Row(
                children: [
                  Container()
                ],
              ),
            ],
      ),
    );
  }

  
}