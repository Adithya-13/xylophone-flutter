import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Widget displayCard(int number, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () => playSound(number),
        color: color,
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              displayCard(1, Colors.red),
              displayCard(2, Colors.orange),
              displayCard(3, Colors.yellow),
              displayCard(4, Colors.green),
              displayCard(5, Colors.teal),
              displayCard(6, Colors.blue),
              displayCard(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
