import 'package:flutter/material.dart';

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

List<String> rpoptions = ['МУП "Водоканал"', 'Частная подрядная организация'];

class _StepThreeState extends State<StepThreeState> {
  String currentRpOption = rpoptions[0];
  TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Начальная дата (например, текущая)
      firstDate: DateTime(1900), // Первая возможная дата
      lastDate:
          DateTime.now(), // Последняя возможная дата (например, до сегодняшнего дня)
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = "${_selectedDate!.toLocal()}".split(
          ' ',
        )[0]; // Форматируем дату в строку (ГГГГ-ММ-ДД)
      });
    }
  }

  @override
  Widget build(Object context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Для продолжение заполните заявление',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                '1. Наименование исполнителя, кому направлено заявление о подключении:',
                style: TextStyle(fontSize: 18),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: const Text('МУП "Водоканал"'),
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
                    title: const Text('Частная подрядная организация'),
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
                  Text(
                    '2. Сведения о заявителе:',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: Text(
                          '2.1. Ф.И.О: ',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      SizedBox(width: 50.0),
                      SizedBox(
                        width: 500,
                        height: 40,
                        // child: EditableText(
                        //   controller: TextEditingController(),
                        //   focusNode: FocusNode(),
                        //   style: TextStyle(),
                        //   cursorColor: Colors.black,
                        //   backgroundCursorColor: Colors.white,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: Text(
                          '2.2. Дата рождения: ',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      SizedBox(width: 50.0),
                      SizedBox(
                        width: 500,
                        height: 40,
                        child: TextField(
                          keyboardType: TextInputType.datetime,
                          controller: _dateController,
                          readOnly: true,
                          onTap: () => _selectDate,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Выберите дату',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    '2.3 Паспортные данные:',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: Text(
                          'Серия и номер паспорта ',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      SizedBox(width: 50.0),
                      SizedBox(
                        width: 200,
                        height: 60,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 4,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Серия',
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      SizedBox(
                        width: 200,
                        height: 60,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 6,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Номер',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: Text(
                          'Дата выдачи паспорта',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      SizedBox(width: 50.0),
                      SizedBox(
                        width: 500,
                        height: 40,
                        child: TextField(
                          keyboardType: TextInputType.datetime,
                          controller: _dateController,
                          readOnly: true,
                          onTap: () => _selectDate,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Выберите дату',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: Text(
                          'Кем выдан',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      SizedBox(width: 50.0),
                      SizedBox(
                        width: 500,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: Text('ИНН:', style: TextStyle(fontSize: 14)),
                      ),
                      SizedBox(width: 50.0),
                      SizedBox(
                        width: 500,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    height: 40,
                    child: Text('СНИЛС', style: TextStyle(fontSize: 14)),
                  ),
                  SizedBox(width: 50.0),
                  SizedBox(
                    width: 500,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                '3. Контактные данные заявителя:',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    height: 40,
                    child: Text('3.1. Адрес регистрации:', style: TextStyle(fontSize: 14)),
                  ),
                  SizedBox(width: 50.0),
                  SizedBox(
                    width: 500,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    height: 40,
                    child: Text('3.2. Почтовый адрес:', style: TextStyle(fontSize: 14)),
                  ),
                  SizedBox(width: 50.0),
                  SizedBox(
                    width: 500,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    height: 40,
                    child: Text('3.3 Контактный номер телефона:', style: TextStyle(fontSize: 14)),
                  ),
                  SizedBox(width: 50.0),
                  SizedBox(
                    width: 500,
                    height: 40,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    height: 40,
                    child: Text('3.4 Электронная почта:', style: TextStyle(fontSize: 14)),
                  ),
                  SizedBox(width: 50.0),
                  SizedBox(
                    width: 500,
                    height: 40,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text(
                '4. Основания обращения с заявлением о подключении (технологическом присоединении)',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 10),
              Text(
                '(указание, кем именно из перечня лиц, имеющих право обратиться с заявлением о подключении, является указанное лицо, а\n'
                'для правообладателя земельного участка также информация о праве лица на земельный участок, на который расположен\n'
                'подключаемый объект основания возникновения такого права)',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                    width: 800,
                    height: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, bottom: 200),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
