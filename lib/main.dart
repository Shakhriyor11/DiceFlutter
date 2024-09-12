import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Dice'),
      ),
      body: DiceApp(),
    ),
  ));
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
          child: TextButton(
            onPressed: () {
              print('left button got pressed');
            },
            child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Image.asset('images/dice3.png')),
          )),
      Expanded(
          child: TextButton(
            onPressed: () {
              print('right button got pressed');
            },
            child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Image.asset('images/dice3.png')),
          )),
    ]);
  }
}
