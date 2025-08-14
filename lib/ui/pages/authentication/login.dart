import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              border: Border.all(width: 0.2),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: TextFormField(
              maxLength: 10,
              decoration: InputDecoration(
                border: InputBorder.none,
                hint: Text('Телефон'),
                prefixText: '+7 ',
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              border: Border.all(width: 0.2),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hint: Text('Введите пароль'),
                hintStyle: TextStyle(
                  color: Colors.grey
                )
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Text(
                'Забыли пароль?',
                style: TextStyle(color: Colors.blue.shade800),
              ),
              Expanded(child: Container()),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade800,
                  elevation: 7,
                  fixedSize: Size(200, 40)
                ),
                onPressed: ()=> {}, 
                child: Text(
                  'Отправить',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                
              )
            ],
          )
        ],
      ),
    );
  }
}
