import 'package:flutter/material.dart';

void main() {
  runApp(RollTheDice());
}

class RollTheDice extends StatelessWidget {
  const RollTheDice({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Roll the Dice'),
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
