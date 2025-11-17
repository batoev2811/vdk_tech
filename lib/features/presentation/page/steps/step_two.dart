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
          Text(
            'Загрузите рабочий проект на платформу',
            style: TextStyle(fontSize: 18),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: BoxBorder.all(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Если ранее рабочий проект (рабочая документация) был согласован (обращались ранее, на руках)'
                            'то загрузите проект на платформу и нажмите кнопку \'отправить на проверку\'',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: BoxBorder.all(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Если рабочий проект ранее не согласовывали, то загрузите на платформу \'рабочий проект\''
                            ' и \'заявление на согласование рабочей документации\' и нажмите кнопку \'отправить на согласование\'',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox( height: 10,),
          FormatFile(),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(child: Column(
                children: [
                  DropzoneWidget(),
                    SizedBox(height: 10),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          foregroundColor: Colors.white,
                          elevation: 4,
                        ),
                        onPressed: () {},
                        child: Text('Отправить на согласование'),
                      ),
                    ),
                ],
              )),
              SizedBox(width: 10,),
              Expanded(child: Column(
                children: [
                  DropzoneWidget(),
                    SizedBox(height: 10),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          foregroundColor: Colors.white,
                          elevation: 4,
                        ),
                        onPressed: () {},
                        child: Text('Отправить на проверку'),
                      ),
                    ),
                ],
              )),
            ],
          ),
        ],
      ),
    );
  }
}
