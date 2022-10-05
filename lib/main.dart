import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int tone) {
    final player = AudioPlayer();
    player.play(AssetSource('note$tone.wav'));
  }

  Expanded buildKey({int tone = 1, Color color = Colors.red}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(tone);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(tone: 1, color: Colors.red),
              buildKey(tone: 2, color: Colors.orange),
              buildKey(tone: 3, color: Colors.yellow),
              buildKey(tone: 4, color: Colors.green),
              buildKey(tone: 5, color: Colors.teal),
              buildKey(tone: 6, color: Colors.blue),
              buildKey(tone: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
