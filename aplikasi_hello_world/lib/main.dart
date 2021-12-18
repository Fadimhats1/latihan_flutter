import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // Class MyApp adalah turunan dari statelesswidget, method build adalah method milik statelesswidget yang harus di override oleh class turunan nya (disini maksudnya MyApp)
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // method build akan mengembalikan sebuah widget yang merupakan tampilan dari statelesswidget atau tampilan dari myapp ketika ditampilkan di layar
    return MaterialApp(
      //Materialapp adalah sebuah widget yang berisikan data - data penting yang digunakan oleh aplikasi yang menggunakan Material design
      home: Scaffold(
        // properti home adalah tampilan awal yang akan ditampilkan oleh widget materialapp, scaffold adalah tampilan dasar dari sebuah aplikasi android
        appBar: AppBar(
          title: Text("Aplikasi Hello World"),
        ),
        body: SafeArea(
            child: Center(
          child: Container(
              color: Colors.lightBlue,
              width: 150,
              height: 100,
              child: Text(
                "Saya sedang melatih kemampuan flutter saya.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
        )),
      ),
    );
  }
}
