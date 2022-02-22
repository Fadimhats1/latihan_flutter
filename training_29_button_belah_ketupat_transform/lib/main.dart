import 'package:flutter/material.dart';
import 'package:training_29_button_belah_ketupat_transform/colorfulButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Colorful Buttons'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
              ColorfulButton(Colors.amber, Colors.red, Icons.mail),
              ColorfulButton(Colors.green, Colors.purple, Icons.vpn_key),
              ColorfulButton(Colors.blue, Colors.yellow, Icons.computer)
            ],
          ),
        ),
      ),
    );
  }
}
