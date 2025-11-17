import 'package:flutter/material.dart';
import 'package:vdk_tech/features/presentation/widget/dropzone_widget.dart';

class StepThree extends StatelessWidget {
  const StepThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(child: StepThreeState());
  }
}

class StepThreeState extends StatefulWidget {
  const StepThreeState({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StepThreeState();
  }
}

class _StepThreeState extends State<StepThreeState> {
  @override
  Widget build(Object context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Для заключения договора загрузите необходимые документы и нажмиите на кнопку отправить на проверку.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: BoxBorder.all(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '- Если договор подписан с МУП Водоканал (обращались ранее, на руках), то загрузите договор на строительство сетей и отправьте на проверку;\n'
                            '- Если ранее договор не был подписан, в зависимости от подрядчика строительства сетей, загрузите договор с МУП Водоканал или с частной подрядной организацией '
                            'на платформу и нажмите кнопку подписать и отправить;',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              SizedBox(height: 10,),
              DropzoneWidget(),
              SizedBox(height: 10,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        elevation: 4,
                      ),
                      onPressed: () {},
                      child: Text('Отправить на проверку'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        elevation: 4,
                      ),
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
