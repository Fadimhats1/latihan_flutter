import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini adalah Text";

  void tombolDiTekan() {
    setState(() {
      message = "Tombol sudah ditekan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anonymous Method'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              RaisedButton(
                child: Text('Tekan saya'),
                onPressed: () {
                  setState(
                    () {
                      message = 'Anonymous method, tombol ditekan';
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
