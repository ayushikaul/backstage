import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class VideoPlayer extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        child: null,
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
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
                buildKey(color: Colors.purple[50], soundNumber: 1),
                buildKey(color: Colors.purple[100], soundNumber: 2),
                buildKey(color: Colors.purple[200], soundNumber: 3),
                buildKey(color: Colors.purple[300], soundNumber: 4),
                buildKey(color: Colors.purple[400], soundNumber: 5),
                buildKey(color: Colors.purple[500], soundNumber: 6),
                buildKey(color: Colors.purple[600], soundNumber: 7),
              ],
          ),
        ),
      ),
    );
  }
}