import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  const StepOneState({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StepOneState();
  }
  
}

class _StepOneState extends State<StepOneState> {
  @override
  Widget build(Object context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Запрос и выдача техусловий',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Container(
                  )
                ],
              ),
            ],
      ),
    );
  }

  
}