import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:meme_creator/nav_drawer.dart';

import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart';

class TrendingMeme {
  final String title;
  final String url;

  const TrendingMeme({required this.title, required this.url});

  factory TrendingMeme.fromJson(Map<String, dynamic> json) {
    return TrendingMeme(title: json['title'], url: json['url']);
  }
}

Future<List<TrendingMeme>> getTrending() async{
  final String response = await rootBundle.loadString('assets/trending.json');
  await Future.delayed(const Duration(milliseconds: 1000));
  List<dynamic> data = jsonDecode(response);

  List<TrendingMeme> results = [];

  for (var i = 0; i < data.length; i++) {
    final entry = data[i];
    results.add(TrendingMeme.fromJson(entry));
  }
  return results;
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<TrendingMeme>> memes;

  @override
  void initState(){
    super.initState();
    memes = getTrending();
  }

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

    );
  }
}

