import 'package:flutter/material.dart';
import 'package:meme_creator/nav_drawer.dart';

class CreatorPage extends StatefulWidget {
  const CreatorPage({Key? key}) : super(key: key);

  @override
  State<CreatorPage> createState() => _CreatorPageState();
}

class _CreatorPageState extends State<CreatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Start Creating your Meme',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
        )),
        backgroundColor: Colors.redAccent,
      ),
      drawer: NavDrawer(
        selected: DrawerSelection.creator,
      ),
      body: Center(child: Text('Create Meme')),
    );
  }
}
