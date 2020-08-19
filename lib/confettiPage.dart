import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ConfettiPage extends StatefulWidget {
  @override
  _ConfettiPageState createState() => _ConfettiPageState();
}

class _ConfettiPageState extends State<ConfettiPage> {
  ConfettiController _controller;
  @override
  void initState() {
    super.initState();
    _controller = new ConfettiController(
      duration: new Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConfettiWidget(
            blastDirectionality: BlastDirectionality.explosive,
            confettiController: _controller,
            particleDrag: 0.05,
            emissionFrequency: 0.05,
            numberOfParticles: 25,
            gravity: 0.05,
            shouldLoop: false,
            colors: [
              Colors.green,
              Colors.red,
              Colors.yellow,
              Colors.blue,
            ],
          ),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.5),
              side: BorderSide(color: Colors.indigo),
            ),
            color: Colors.blue,
            onPressed: () {
              _controller.play();
            },
            child: Text(
              "Success",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
