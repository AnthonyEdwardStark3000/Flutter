import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meme_creator/nav_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Meme of the Day',
          )),
          backgroundColor: Colors.indigoAccent,
        ),
        drawer: const NavDrawer(
          selected: DrawerSelection.home,
        ),
        body: const Center(child: Text('Home Page')));
  }
}
