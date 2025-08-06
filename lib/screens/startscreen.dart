import 'package:flutter/material.dart';

class Startscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        // margin: EdgeInsets.all(40),
        child: Column(
          children: [
            Row(
              children: [
                Card(
                  color: Colors.black12,
                  child: Text("Техприсоединение"),
                ),
                Card(
                  color: Colors.black12,
                  child: Text("Техприсоединение"),
                )
              ],
            ),
            Spacer(flex: 10),
            Row(
              children: [
                Card(
                  color: Colors.black12,
                  child: Text("Техприсоединение"),
                ),
                Card(
                  color: Colors.black12,
                  child: Text("Техприсоединение"),
                )
              ],
            ),
            Spacer(flex: 10),
            Row(
              children: [
                Card(
                  color: Colors.black12,
                  child: Text("Техприсоединение"),
                ),
                Card(
                  color: Colors.black12,
                  child: Text("Техприсоединение"),
                )
              ],
            ),
            Spacer(flex: 10),
          ],
        )
      )
    );
  }
  
}
