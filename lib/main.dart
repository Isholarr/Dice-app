import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({super.key});

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  @override
  Widget build(BuildContext context) {
    var leftDicenum = 1;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDicenum = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDicenum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
