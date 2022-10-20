import 'package:flutter/material.dart';
import 'package:dice_icons/dice_icons.dart';

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

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 1;
    var rightDiceNumber = 2;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('💡 Score 10 to win the game',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0, bottom: 10.0),
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
                print('Clicked');
              },
              child: Text('Click me to play !'),
            ),
          ],
        )
      ],
    );
  }
}
