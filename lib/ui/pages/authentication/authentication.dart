import 'package:flutter/material.dart';
import 'package:vdk_tech/ui/pages/authentication/login.dart';
import 'package:vdk_tech/ui/pages/authentication/registration.dart';

class AuthenticationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(child: AuthenticationPageState());
  }
}

class AuthenticationPageState extends StatefulWidget {
  const AuthenticationPageState({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AuthenticationPageState();
  }
}

class _AuthenticationPageState extends State<AuthenticationPageState>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: 200,
                    width: 200,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
            'МУП Водоканал',
            style: TextStyle(
              color: Colors.blue,
              letterSpacing: 15,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              color: Colors.blue.shade800,
              child: Column(
                children: [
                  Text(
                    'Добро пожаловать',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 600,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    ),
                    child: TabBar(
                          // splashBorderRadius: BorderRadius.all(Radius.circular(8)),
                          labelColor: Colors.blue.shade600,
                          controller: _tabController,
                          tabs: [
                            Tab(
                              text: 'Войти',
                            ),
                            Tab(text: 'Зарегистрироваться'),
                          ],
                        ),
                    ),
                    Container(
                      color: Colors.white,
                      width: 600,
                      height: 300.0,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                        LoginPage(),
                        RegistrationPage(),
                      ]),
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
