import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(xylophoneApp());

class xylophoneApp extends StatelessWidget {
  const xylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void soundPlayer(int soundNumber) {
      final player = AudioPlayer();
      player.play(AssetSource('note1.wav'));
    }

    Expanded buildKey({required Color color, required int soundNumber}) {
      return Expanded(
        child: ElevatedButton(
            onPressed: () async {
              soundPlayer(soundNumber);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: color, // Background color
            ),
            child: null),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(color: Colors.red, soundNumber: 1),
                  buildKey(color: Colors.blueGrey, soundNumber: 2),
                  buildKey(color: Colors.greenAccent, soundNumber: 3),
                  buildKey(color: Colors.purpleAccent, soundNumber: 4),
                  buildKey(color: Colors.orangeAccent, soundNumber: 5),
                  buildKey(color: Colors.indigoAccent, soundNumber: 6),
                  buildKey(color: Colors.redAccent, soundNumber: 7),
                ]),
          ),
        ),
      ),
    );
  }
}
