import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Center(child: Text('I am Poor')),
              backgroundColor: Colors.lightGreen),
          body: Center(
            child: Image(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2017/09/08/18/20/garbage-2729608_960_720.jpg')),
          )),
    );
  }
}
