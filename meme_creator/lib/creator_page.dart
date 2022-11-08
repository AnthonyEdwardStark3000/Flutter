import 'package:flutter/material.dart';
import 'nav_drawer.dart';

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
        title: const Center(
            child: Text(
          'create meme',
        )),
        backgroundColor: Colors.indigoAccent,
      ),
      drawer: const NavDrawer(
        selected: DrawerSelection.creator,
      ),
    );
  }
}
