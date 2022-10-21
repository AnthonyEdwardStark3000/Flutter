import 'package:flutter/material.dart';
import 'package:dice_icons/dice_icons.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: Center(
          child: Icon(
            DiceIcons.dice3,
            size: 32,
          ),
        ),
        title: Center(
            child: Text(
          'Dice Media .',
          style: TextStyle(
            fontSize: 21.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
          ),
        )),
        backgroundColor: Colors.red.shade400,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  int life = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          child: Text('💡 Score 10 to win the game',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0)),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            child: Expanded(child: Image.asset('images/$life.png')),
            width: 260,
            height: 130,
          )
        ]),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice$leftDiceNumber.png'),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice$rightDiceNumber.png'),
              )),
            ],
          ),
        ),
        Row(
          children: [
            SizedBox(width: 130.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                  rightDiceNumber = Random().nextInt(6) + 1;
                  life--;
                  if (life <= 0 && (leftDiceNumber + rightDiceNumber != 10)) {
                    life = 3;
                    print("Done");
                  }
                });
              },
              child: Text('Click me to play !'),
            ),
          ],
        )
      ],
    );
  }
}
