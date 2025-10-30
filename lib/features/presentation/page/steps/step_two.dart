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


class _StepTwoState extends State<StepTwoState> {

  @override
  Widget build(Object context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Если ранее рабочий проект (рабочая документация) был согласован (обращались ранее, на руках)'
                'то загрузите проект на платформу и нажмите кнопку \'отправить на проверку\''
                '\nЕсли рабочий проект ранее не согласовывали, то загрузите на платформу \'рабочий проект\''
                ' и \'заявление на согласование рабочей документации\' и нажмите кнопку \'отправить на согласование\'',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              FormatFile(),
              SizedBox(height: 10),
              SizedBox(height: 10),
              DropzoneWidget(),
              SizedBox(height: 10),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        
                      ),
                      onPressed: () {},
                      child: Text('Отправить на проверку'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Отправить на согласование'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
