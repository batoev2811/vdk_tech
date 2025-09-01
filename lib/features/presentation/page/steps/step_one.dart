import 'package:flutter/material.dart';
import 'package:vdk_tech/features/presentation/widget/dropzone_widget.dart';
import 'package:vdk_tech/features/presentation/widget/format_file_info.dart';

class StepOne extends StatelessWidget {
  const StepOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(child: StepOneState());
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
            'Для получения технического условия, загрузите все необходимые документы и нажмите кнопку \'Далее\'',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          FormatFile(),
          Text(
            'Копия паспорта (доверенность, подтверждающая полномочия лица, подписавшего запрос)', 
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          DropzoneWidget(),
          SizedBox(height: 10),
          Text(
            'План земельного участка в масштабе 1:500 и 1:2000 со всеми наземными и подземными коммуникациями' 
            '\n(запрашивается в Комитете по архитектуре и градостроительству, Администрации г. Улан-Удэ ул. Бабушкина д.25)', 
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          DropzoneWidget(),
          SizedBox(height: 10),
          Text(
            'Расчет нагрузок водопотребления и (или) водоотведения м3/час, л/сек, л/сут' 
            '\n(запрашивается в любой проектной организации)', 
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          DropzoneWidget(),
          SizedBox(height: 10),
          Text(
            'ИНН/ОГРН', 
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          DropzoneWidget(),
          SizedBox(height: 10),
          Text(
            'Копии правоустанавливающих и правоудостоверяющих документов на подключаемы земельный участок и объект, ранее построенный и введенный в эксплуатацию. ' 
            '\n(При предоставлении в качестве, правоудостоверяющего документа выписки из ЕГРН, то должны быть получены не ранее чем за 30 кален.дней до дня направления запроса)', 
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          DropzoneWidget(),
          SizedBox(height: 10),
          Text(
            'Иные документы', 
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          DropzoneWidget(),
        ],
      ),
    );
  }
}
