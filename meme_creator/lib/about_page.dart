import 'package:flutter/material.dart';
import 'nav_drawer.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'About',
          )),
          backgroundColor: Colors.indigoAccent,
        ),
        drawer: const NavDrawer(
          selected: DrawerSelection.about,
        ),
        body: const Center(
          child: Text('Created by Mr.Stark'),
        ));
  }
}
