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
          title: Text('Flexible Layout'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.amber,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.all(5), color: Colors.blue),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.all(5), color: Colors.red),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(margin: EdgeInsets.all(5), color: Colors.teal),
              ),
              Flexible(
                flex: 1,
                child:
                    Container(margin: EdgeInsets.all(5), color: Colors.purple),
              )
            ],
          ),
        ),
      ),
    );
  }
}
