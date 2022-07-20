import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text('Roll the Dice'),
          ),
          backgroundColor: Colors.red,
        ),
        body: const Body(),
      ),
    ),
  );
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int ldice = 1;
  int rdice = 4;
  // const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      ldice = (Random().nextInt(6)) + 1;
                      print('Left dice= $ldice');
                    },
                  );
                },
                child: Image.asset('images/dice$ldice.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextButton(
                child: Image.asset('images/dice$rdice.png'),
                onPressed: () {
                  setState(() {
                    rdice = (Random().nextInt(6)) + 1;
                    print('Right dice= $rdice');
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
