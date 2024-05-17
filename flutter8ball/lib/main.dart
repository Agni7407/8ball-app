import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            backgroundColor: Colors.blue[600],
          ),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int changenumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[800],
      child: Center(
          child: TextButton(
              onPressed: () {
                setState(() {
                  changenumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$changenumber.png'))),
    );
  }
}
