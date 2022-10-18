import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('I am Rich')),
          backgroundColor: Colors.green[800],
        ),
        body: Center(
          child: Image(
            image: AssetImage('image/RDJ2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}
