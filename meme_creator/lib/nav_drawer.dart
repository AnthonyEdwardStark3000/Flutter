import 'package:flutter/material.dart';
import 'package:meme_creator/about.dart';
import 'package:meme_creator/creator_page.dart';
import 'home_page.dart';

enum DrawerSelection { home, creator, about }

class NavDrawer extends StatefulWidget {
  final DrawerSelection selected;
  const NavDrawer({Key? key, required this.selected});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 104,
            child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.black26),
                child: Center(
                    child: Text(
                  'Menu',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ))),
          ),
          ListTile(
              selected: widget.selected == DrawerSelection.home,
              selectedTileColor: Colors.indigo.shade50,
              leading: Icon(Icons.home),
              title: Text('Meme of The Day'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
          ListTile(
              selected: widget.selected == DrawerSelection.creator,
              selectedTileColor: Colors.indigo.shade50,
              leading: Icon(Icons.whatshot),
              title: Text('Create A Meme'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => CreatorPage()));
              }),
          ListTile(
              selected: widget.selected == DrawerSelection.about,
              selectedTileColor: Colors.indigo.shade50,
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => About()));
              }),
        ],
      ),
    );
  }
}
