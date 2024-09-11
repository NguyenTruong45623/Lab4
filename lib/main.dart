import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Magic 8 Ball"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Ball(),
      ),
    ),
  ));
}

class Ball extends StatefulWidget {
  const Ball({super.key});
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ramdomBall = 1;

  void RandomBall() {
    setState(() {
      ramdomBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () { RandomBall(); },
        child: Image.asset("images/ball$ramdomBall.png"));
  }
}
