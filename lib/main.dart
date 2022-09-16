import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  String get url => null;

  void play(number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  keys(color, number) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          play(number);
        },
        child: Text(' '),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            keys(Colors.purple, 1),
            keys(Colors.indigo, 2),
            keys(Colors.blue, 3),
            keys(Colors.green, 4),
            keys(Colors.yellow, 5),
            keys(Colors.orange, 6),
            keys(Colors.red, 7),
          ],
        ),
      ),
    );
  }
}
