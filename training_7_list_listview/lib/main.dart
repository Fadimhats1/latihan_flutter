// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan ListView'),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                    child: Text('Tambah data'),
                    onPressed: () {
                      setState(() {
                        widgets.add(
                          Text(
                            'Data ke-' + counter.toString(),
                            style: TextStyle(fontSize: 40),
                          ),
                        );
                        counter++;
                      });
                    }),
                RaisedButton(
                  child: Text('Hapus Data'),
                  onPressed: () {
                    setState(() {
                      if (counter > 1) {
                        widgets.removeLast();
                        counter--;
                      }
                    });
                  },
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widgets,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
