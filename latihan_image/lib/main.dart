import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Image"),
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              color: Colors.black,
              width: 200,
              height: 200,
              padding: EdgeInsets.all(3),
              child: Image(
                image: AssetImage("images/Spiderman.jpg"),
                fit: BoxFit.contain,
                // repeat: ImageRepeat.repeat,
              ),
            ),
          ),
        ),
      ),
    );
  }
}