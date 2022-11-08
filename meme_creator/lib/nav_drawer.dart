import 'package:flutter/material.dart';
import 'package:meme_creator/about_page.dart';
import 'package:meme_creator/home_page.dart';
import 'package:meme_creator/creator_page.dart';

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
          const SizedBox(
            height: 90,
            child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                child: Center(
                    child: Text(
                  'Menu',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))),
          ),
          ListTile(
            selected: widget.selected == DrawerSelection.home,
            selectedColor: Colors.indigo,
            selectedTileColor: Colors.indigo.shade100,
            leading: const Icon(Icons.home),
            title: const Text('Meme of the Day'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          ListTile(
            selected: widget.selected == DrawerSelection.creator,
            selectedColor: Colors.indigo,
            selectedTileColor: Colors.indigo.shade100,
            leading: const Icon(Icons.whatshot_outlined),
            title: const Text('Meme Creator'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CreatorPage()));
            },
          ),
          ListTile(
            selected: widget.selected == DrawerSelection.about,
            selectedColor: Colors.indigo,
            selectedTileColor: Colors.indigo.shade100,
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const About()));
            },
          ),
        ],
      ),
    );
  }
}
