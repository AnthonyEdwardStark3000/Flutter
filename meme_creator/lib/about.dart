import 'package:flutter/material.dart';
import 'nav_drawer.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'About Us',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
        )),
        backgroundColor: Colors.redAccent,
      ),
      drawer: NavDrawer(
        selected: DrawerSelection.about,
      ),
      body: Center(child: Text('About Us')),
    );
  }
}
