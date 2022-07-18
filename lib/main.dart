import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Roll the Dice'),
          ),
          backgroundColor: Colors.red,
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          // flex: 2,
          child: Image.asset('images/dice1.png'),
          ),
        Expanded(
          // flex: 1,
          child: Image.asset('images/dice2.png'),
        ),
      ],
    );
  }
}
