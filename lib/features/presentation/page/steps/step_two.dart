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

List<String> rpoptions = ['Согласован', 'Не согласован'];

class _StepTwoState extends State<StepTwoState> {
  String currentRpOption = rpoptions[0];

  @override
  Widget build(Object context) {
    return SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ваш рабочий проект, ранее, был согласован?'),
              Column(
                children: [
                  ListTile(
                    title: const Text('Согласован'),
                    leading: Radio(
                      value: rpoptions[0],
                      groupValue: currentRpOption,
                      onChanged: (value) {
                        setState(() {
                          currentRpOption = value.toString();
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Не согласован'),
                    leading: Radio(
                      value: rpoptions[1],
                      groupValue: currentRpOption,
                      onChanged: (value) {
                        setState(() {
                          currentRpOption = value.toString();
                        });
                      },
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
                      textStyle: WidgetStatePropertyAll(TextStyle(color: Colors.white))
                    ),
                    child: Text('Выбрать'),
                    onPressed: (){
                      if (currentRpOption == 'Согласован') {
                        Navigator.pushNamed(this.context, '/');
                      } else {
                        Navigator.popAndPushNamed(this.context, '/steptwov2');
                      }
                    },
                  )
                ],
              ),
            ],
          ),
        ),
    );
  }
}
