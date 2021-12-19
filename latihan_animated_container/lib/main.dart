import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random randoms = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Animated Container'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {});
                  },
                  child: AnimatedContainer(
                    color: Color.fromARGB(
                      50 + randoms.nextInt(206),
                      randoms.nextInt(256),
                      randoms.nextInt(256),
                      randoms.nextInt(256),
                    ),
                    duration: Duration(milliseconds: 100),
                    width: 50.0 + randoms.nextInt(101),
                    height: 50.0 + randoms.nextInt(101),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('Refresh'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
