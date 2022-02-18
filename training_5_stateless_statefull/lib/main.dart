import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int angka = 0;

  void tekanTombol() {
    setState(() {
      ++angka;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless dan Statefull Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                angka.toString(),
                style: TextStyle(fontSize: 10 + angka.toDouble()),
              ),
              RaisedButton(
                  child: Text('Tambah Bilangan'), onPressed: tekanTombol)
            ],
          ),
        ),
      ),
    );
  }
}
