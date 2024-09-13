import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pink[700],
        elevation: 100.0,
        title: Text('Dice'),
      ),
      body: DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {

  var random = Random();
  var leftImageNumber = 1;
  var rightImageNumber = 3;

  void changeDice() {
    setState(() {
      rightImageNumber = random.nextInt(6) + 1;
      leftImageNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Image.asset('images/dice$leftImageNumber.png')),
            )),
        Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Image.asset('images/dice$rightImageNumber.png')),
            )),
      ]),
    );
  }
// ///[bad way to use]
// Widget customText(String text){
//   return Text(text);
// }
}


// ///[good way to use]
// class _CustomText extends StatelessWidget {
//   final String text;
//   const _CustomText({super.key,required this.text});
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(text);
//   }
// }
