import 'package:flutter/material.dart';
import 'package:vdk_tech/features/presentation/widget/dropzone_widget.dart';
import 'package:vdk_tech/features/presentation/widget/format_file_info.dart';

class StepFive extends StatelessWidget {
  const StepFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(child: StepFiveState());
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Сбор исполнительной документации. Загрузите все необходимые документы на платформу',
            style: TextStyle(fontSize: 18),
          ),

          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    border: BoxBorder.all(style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Text(
                        'Строительство сетей через частную подрядную организацию',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '1  Согласование владельца частной сети (расписка), справка с ДНТ;\n'
                        '2  Копия квитанции (чека) за оплату по прокладке сетей и технологическое подключение;\n'
                        '3  Архитектурная (исполнительная) съемка готового водопровода;\n'
                        '4  Акт раздела границ (после предоставления исполнительной съемки готового водопровода);\n'
                        '5  Акт выполненных работ по осуществлению врезки в систему центрального, холодного водоснабжения\n'
                        '6  Акт об установке прибора учета (копия паспорта водомера);\n'
                        '7  Акт о подключении;\n'
                        '8  Выписка с лицевого счета (о количестве прописанных);\n'
                        '9  Согласие на обработку персональных данных;\n'
                        '10 Комплект рабочих чертежей с внесенными в них изменениями;\n'
                        '11 Паспорта на устанавливаемое оборудование и агрегаты;\n'
                        '12 Сертификаты соответствия, санитарно-гигиенические, пожарные;\n'
                        '13 Акты освидетельствования скрытых работ на:\n'
                        '   - монтаж трубопроводов и оборудования;\n'
                        '   - крепление трубопроводов к конструкциям здания;\n'
                        '   -прохождение трубопроводов через противопожарные перегородки и перекрытия;\n'
                        '   - антикоррозионную защиту сварных соединений трубопроводов водоснабжения;\n'
                        '   - антикоррозионную обработку трубопроводов;\n'
                        '   - тепловую изоляцию трубопроводов;\n'
                        '14 Акты завершения монтажа систем;\n'
                        '15 Ведомость смонтированного оборудования, агрегатов, узлов и средств автоматизации;\n'
                        '16 Исполнительные геодезические схемы;\n'
                        '17 Исполнительный чертеж с внесенными согласованными изменениями;\n'
                        '18 Акты испытаний:\n'
                        '   -Акт о проведении промывки и дезинфекции трубопроводов (с заключением);\n'
                        '   -Акт гидростатического или манометрического испытания на прочность и герметичность трубопроводов;\n'
                        '   -Акт приемки внутренних систем хозяйственного и горячего водоснабжения;\n'
                        '   -Акты освидетельствования участков сетей инженерно-технического обеспечения;\n'
                        '   -Результаты анализов воды\n',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 570,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    border: BoxBorder.all(style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Text(
                        'Строительство сетей через МУП Водоканал',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '1 Согласование владельца частной сети (расписка), справка с ДНТ;\n'
                        '2 Копия квитанции (чека) за оплату по прокладке сетей и технологическое подключение;\n'
                        '3 Архитектурная (исполнительная) съемка готового водопровода;\n'
                        '4 Выписка с лицевого счета (о количестве прописанных);\n'
                        '5 Согласие на обработку персональных данных;\n',
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
          Row(
            children: [
              Expanded(child: DropzoneWidget()),
              SizedBox(width: 10,),
              Expanded(child: DropzoneWidget()),
            ],
          ),
        ],
      ),
    );
  }
}
