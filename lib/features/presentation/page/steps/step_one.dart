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
        children: [
          Text(
            'Для получения технического условия, загрузите все необходимые документы и нажмите кнопку \'Далее\'',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 370,
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
                      Text(
                        'Для физических лиц: ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '- Копия паспорта (доверенность, подтверждающая полномочия лица, подписавшего запрос)\n'
                        '- План земельного участка в масштабе 1:500 и 1:2000 со всеми наземными и подземными коммуникациями'
                        '(запрашивается в Комитете по архитектуре и градостроительству, Администрации г. Улан-Удэ ул. Бабушкина д.25)\n'
                        '- Расчет нагрузок водопотребления и (или) водоотведения м3/час, л/сек, л/сут'
                        '(запрашивается в любой проектной организации)\n'
                        '- ИНН/ОГРН\n'
                        '- Копии правоустанавливающих и правоудостоверяющих документов на подключаемы земельный участок и объект, ранее построенный и введенный в эксплуатацию. '
                        '(При предоставлении в качестве, правоудостоверяющего документа выписки из ЕГРН, то должны быть получены не ранее чем за 30 кален.дней до дня направления запроса)\n'
                        '- Иные документы (при необходимости)\n',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 370,
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
                      Text(
                        'Для физических лиц (ИП): ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '- Копия паспорта который подает документы (ИП/Заявитель). Доверенность, если подает заявитель\n'
                        '- Документы, содержащие информацию о границах земельного участка, на котором размещен (планируется к размещению)'
                        'подключаемый объект (топографическая карта земельного участка в масштабе 1:500 с указанием границ такого земельного участка'
                        '(Запрашивается в Комитете по архитектуре и градостроительству, Администрации г. Улан-Удэ ул Бабушкина д.25)\n'
                        '- Баланс водопотребления и водоотведения подключаемого объекта\n'
                        '- ИНН/ОГРН\n'
                        '- Копии правоустанавливающих и правоудостоверяющих документов на земельный участок и здания, выписки из ЕГРН (должны быть получены не ранее чем за 30 кален.дней до подачи запроса)'
                        'Договор аренды земельного участка и здания действующие, если участок и здание в аренде (в ЕГРН об аренде должно быть прописано)\n'
                        '- Иные документы (при необходимости)\n',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
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
                      Text(
                        'Для юридических лиц: ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '- Копии учредительных документов, а также документы, подтверждающие полномочия лица, подписавшего запрос'
                        '(Устав, Решение о назначении, Приказ, ИНН, ОГРН, ЕГРЮЛ, Карточка предприятия)\n'
                        '- Копии правоустанавливающих и правоудостоверяющих документов на земельный участок, выписка из ЕГРН '
                        '(должны быть получены не ранее чем за 30 кален.дней до дня направления запроса). Договор аренды '
                        'земельного участка действующий, если участок в аренде (В ЕГРН об аренде должно быть прописано)\n'
                        '- Копия паспорта, который подает документы (Ген.директор/Заявитель). Доверенность, если подает заявитель\n'
                        '- Документы, содержащие информацию о границах земельного участка, на котором размещен '
                        '(планируется к размещению) подключаемый объект (топографическая карта земельного участка в масштабе 1:500 '
                        'с указанием границ такого земельного участка) (запрашивается в Комитете по архитектуре и градостроительству, '
                        'Администрации г.Улан-Удэ ул Бабушкина д.25)\n'
                        '- Градостроительный план земельного участка (при его наличии) и Баланс водопотребления и водоотведения подключаемого объекта\n'
                        '- Копии правоустанавливающих и правоудостоверяющих документов на здание, выписка из ЕГРН '
                        '(должны быть получены не ранее чем за 30 кален.дней до дня направления запроса). '
                        'Договор аренды здания действующие, если здание в аренде (В ЕГРН об аренде должно быть прописано)\n'
                        '- Иные документы (при необходимости)\n',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          FormatFile(),
          SizedBox(height: 10),
          DropzoneWidget(),
        ],
      ),
    );
  }
}
