import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My first app",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App title'),
      ),
      body: ListView(
        children: <Widget>[
          ACard(),
          ACard()
        ],
      ),
    );
  }
}

class ACard extends StatelessWidget {
  const ACard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // semanticContainer: true,
      margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 10),
      elevation: 7,
      child: Column(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://i.ibb.co/6tkYC50/1587281583317.jpg')
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Kritpavin chaiwong Kritpavin chaiwong Kritpavin chaiwongKritpavin chaiwong", 
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            alignment: Alignment(1, 0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "KU77 CS32",
              style: TextStyle(
                fontStyle: FontStyle.italic
              ),
            ),
          ),
        ],
      ),
    );
  }
}