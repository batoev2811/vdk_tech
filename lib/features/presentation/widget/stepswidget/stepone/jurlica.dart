import 'package:flutter/material.dart';
import 'package:vdk_tech/features/presentation/widget/dropzone_widget.dart';
import 'package:vdk_tech/features/presentation/widget/format_file_info.dart';

class Jurlica extends StatelessWidget{
  const Jurlica({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(child: JurlicaState(),);
  }
}

class JurlicaState extends StatefulWidget {
  const JurlicaState({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Jurlica();
  }
}


class _Jurlica extends State<JurlicaState> {
  

  @override
  Widget build(BuildContext context) {
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
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              border: BoxBorder.all(
                style: BorderStyle.solid,
              )
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5.0,
              children: [
                Text(
              '- Копия паспорта (доверенность, подтверждающая полномочия лица, подписавшего запрос)', 
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- План земельного участка в масштабе 1:500 и 1:2000 со всеми наземными и подземными коммуникациями' 
              '\n(запрашивается в Комитете по архитектуре и градостроительству, Администрации г. Улан-Удэ ул. Бабушкина д.25)', 
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Расчет нагрузок водопотребления и (или) водоотведения м3/час, л/сек, л/сут' 
              '\n(запрашивается в любой проектной организации)', 
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- ИНН/ОГРН', 
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Копии правоустанавливающих и правоудостоверяющих документов на подключаемы земельный участок и объект, ранее построенный и введенный в эксплуатацию. ' 
              '\n(При предоставлении в качестве, правоудостоверяющего документа выписки из ЕГРН, то должны быть получены не ранее чем за 30 кален.дней до дня направления запроса)', 
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Иные документы (при необходимости)', 
              style: TextStyle(fontSize: 16),
            ),
              ],
            ),
          ),
          SizedBox(height: 10),
          DropzoneWidget(),
        ],
      ),
    );
  }
}