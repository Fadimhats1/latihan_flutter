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
  int counter = 0;
  List<Color> color = [Colors.blue, Colors.red, Colors.amber, Colors.green];
  void tekanTombol() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget Demo"),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  counter.toString(),
                  style: TextStyle(
                    color: color[counter % 4],
                    fontSize: 20 + counter.toDouble(),
                  ),
                ),
                ElevatedButton(
                  onPressed: tekanTombol,
                  child: Text("Tambah Bilangan"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
