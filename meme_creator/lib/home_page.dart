import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meme_creator/nav_drawer.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:http/http.dart' as http;

class TrendingMeme {
  final String title;
  final String url;
  const TrendingMeme({required this.title, required this.url});
  factory TrendingMeme.fromJson(Map<String, dynamic> json) {
    return TrendingMeme(title: json['title'], url: json['url']);
  }
}

Future<List<TrendingMeme>> getTrending() async {
  // final response = await http.get(
  //   Uri.parse('https://reddit-meme.p.rapidapi.com/memes/trending'),
  //   headers: {
  //     'X-RapidAPI-Key': '6cbc1be171msh7d6c61831b12dfdp187b0bjsncd8ee25f1291',
  //     'X-RapidAPI-Host': 'reddit-meme.p.rapidapi.com'
  //   },
  // );
  // List<dynamic> data = jsonDecode(response.body);

  final String response = await rootBundle.loadString('assets/trending.json');
  await Future.delayed(const Duration(milliseconds: 100));
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
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<TrendingMeme>> memes;
  @override
  void initState() {
    super.initState();
    memes = getTrending();
    print("Received Data");
  }

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: 450,
                  child: FutureBuilder(
                      future: memes,
                      builder: (context, AsyncSnapshot snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else {
                          return Swiper(
                            scale: 0.8,
                            pagination: const SwiperPagination(),
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, int index) {
                              TrendingMeme item = snapshot.data[index];
                              return Card(
                                  elevation: 3,
                                  child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          Text(
                                            item.title,
                                            style: const TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo),
                                          ),
                                          Image.network(item.url)
                                        ],
                                      )));
                            },
                          );
                        }
                      })),
            ],
          ),
        ));
  }
}
