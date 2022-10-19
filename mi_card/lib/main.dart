import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Center(child: Text('About Mr.Stark')),
          foregroundColor: Colors.black,
          backgroundColor: Colors.amberAccent),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/RDJ.jpg'),
          ),
          Text(
            'Mr.Stark',
            style: TextStyle(
                fontSize: 38.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
                fontSize: 38.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'SourceSansPro'),
          ),
          SizedBox(
              height: 30.0,
              width: 160.0,
              child: Divider(
                color: Colors.black,
                thickness: 0.7,
              )),
          Card(
            margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.green,
              ),
              title: Text('+91 987654332',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            child: ListTile(
                leading: Icon(Icons.email, color: Colors.green),
                title: Text('check123@gmail.com',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0))),
          ),
        ],
      ),
      backgroundColor: Colors.lightBlueAccent,
    ));
  }
}
