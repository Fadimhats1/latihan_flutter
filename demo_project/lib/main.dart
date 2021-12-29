import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan Media Query"),
        ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainers(),
              )
            : Row(
                children: generateContainers(),
              )
        // Container(
        //   color: Colors.red,
        //   width: MediaQuery.of(context).size.width / 3,
        //   height: MediaQuery.of(context).size.height / 2,
        //),
        );
  }

  List<Widget> generateContainers() {
    return <Widget>[
      Container(
        color: Colors.red,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        child: Text("UJANG"),
      ),
    ];
  }
}
