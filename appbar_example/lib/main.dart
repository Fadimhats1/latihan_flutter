import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title: Text(
            "Appbar Example",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app),
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0Xff0096ff),
                    Color(0Xff6610f2),
                  ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
              // image: DecorationImage(
              //     image: AssetImage('assets/pattern.jpg'),
              //     fit: BoxFit.none,
              //     repeat: ImageRepeat.repeat),
            ),
          ),
        ),
      ),
    );
  }
}
