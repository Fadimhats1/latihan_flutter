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
  List<Widget> widgets = [];
  int counter = 20;

  _MyAppState() {
    for (int i = 0; i < counter; i++) {
      widgets.add(Text(
        'Data ke-' + (i + 1).toString(),
        style: TextStyle(fontSize: 35),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Listview'),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (counter > 0) {
                            widgets.removeLast();
                            counter--;
                          }
                        });
                      },
                      child: Text('Kurang Data')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widgets.add(
                            Text(
                              'Data ke-' + (counter + 1).toString(),
                              style: TextStyle(fontSize: 35),
                            ),
                          );
                          counter++;
                        });
                      },
                      child: Text('Tambah Data')),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widgets,
              )
            ],
          ),
        ),
      ),
    );
  }
}
