import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:meme_creator/nav_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Meme Creator',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
        )),
        backgroundColor: Colors.redAccent,
      ),
      drawer: NavDrawer(
        selected: DrawerSelection.home,
      ),
      body: Swiper(
        itemCount: 4,
        pagination: SwiperPagination(),
        itemBuilder: (context, index) {
          return Center(child: Text('Swiper function $index'));
        },
      ),
    );
  }
}
