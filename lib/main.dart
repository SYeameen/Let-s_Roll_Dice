import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int left_diceNumber = 1;
  int right_diceNumber1 = 4;

  void changeDiceState() {
    setState(
      () {
        left_diceNumber = Random().nextInt(6) + 1;
        right_diceNumber1 = Random().nextInt(6) +
            1; // setState() -> it will change the number instantaneously.When this method is called it triggers a rebuild. So, it will look into these curly braces of the build method and see what has changed. So, when we call this method -it will see where it needs the updates and it will do so accordingly.
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[500],
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text('Letsss Rollzz'),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceState();
                  },
                  child: Image.asset('images/dice$left_diceNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceState();
                  },
                  child: Image.asset('images/dice$right_diceNumber1.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
