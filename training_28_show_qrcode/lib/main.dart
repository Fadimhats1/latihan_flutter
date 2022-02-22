import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Menampilkan QR'),
        ),
        body: Center(
          child: QrImage(
            data:
                'https://www.youtube.com/watch?v=7CFAEXymRvM&list=PLZQbl9Jhl-VACm40h5t6QMDB92WlopQmV&index=32',
            version: 6,
            backgroundColor: Colors.grey,
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(30),
            size: 300,
          ),
        ),
      ),
    );
  }
}
