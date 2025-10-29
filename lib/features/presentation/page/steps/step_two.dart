import 'package:flutter/material.dart';
import 'package:vdk_tech/features/presentation/widget/dropzone_widget.dart';
import 'package:vdk_tech/features/presentation/widget/format_file_info.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Для получения технического условия, загрузите все необходимые документы и нажмите кнопку \'Далее\'',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              FormatFile(),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  border: BoxBorder.all(style: BorderStyle.solid),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5.0,
                  children: [
                    Text('Загрузите заявление', style: TextStyle(fontSize: 16)),
                    Text(
                      'Загрузите рабочий проект',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text('Иные документы', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              DropzoneWidget(),
              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
