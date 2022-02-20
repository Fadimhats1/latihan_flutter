import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Animated Container'),
        ),
        body: Center(
          child: GestureDetector(
            child: AnimatedContainer(
              color: Color.fromARGB(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
              ),
              duration: Duration(seconds: 1),
              width: 50.toDouble() + random.nextInt(101),
              height: 50.toDouble() + random.nextInt(101),
            ),
            onTap: () {
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
