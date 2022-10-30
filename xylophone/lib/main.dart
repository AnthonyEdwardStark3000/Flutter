import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(xylophoneApp());
}

class xylophoneApp extends StatelessWidget {
  const xylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.load("assets/note1.wav");
                    print("Created ..");
                  },
                  child: Text('Press here !...')),
            ),
          ),
        ),
      ),
    );
  }
}
