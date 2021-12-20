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
  Color? color1 = Colors.red, color2 = Colors.amber, targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Draggable"),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Draggable<Color>(
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        elevation: 3,
                        shape: StadiumBorder(),
                        color: color1!.withOpacity(0.7),
                      ),
                    ),
                    data: color1,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        elevation: 3,
                        shape: StadiumBorder(),
                        color: color1,
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        shape: StadiumBorder(),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2!.withOpacity(0.7),
                        shape: StadiumBorder(),
                      ),
                    ),
                    data: color2,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: StadiumBorder(),
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.grey,
                        shape: StadiumBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              DragTarget<Color>(
                builder: (context, candidates, rejected) {
                  return (isAccepted)
                      ? SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            shape: StadiumBorder(),
                            color: targetColor,
                            elevation: 3,
                          ),
                        )
                      : SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            shape: StadiumBorder(),
                            color: Colors.grey,
                          ),
                        );
                },
                onWillAccept: (value) => true,
                onAccept: (value) {
                  isAccepted = true;
                  targetColor = value;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isAccepted = false;
                  });
                },
                child: Text("Reset Drag"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
