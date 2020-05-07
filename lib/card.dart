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
      body: Card(
        margin: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://i.ibb.co/WttS9Dp/Peachpuff-Brush-Stroke-Photography-Logo-2.png')
                ),
              ),
            ),
            Text("Kritpavin chaiwong"),
            Text("KU77 CS32"),
          ],
        ),
      ),
    );
  }
}