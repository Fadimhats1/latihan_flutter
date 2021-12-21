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
          leading: Icon(Icons.arrow_back),
          title: Center(
            child: Text("TakePay"),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(Icons.wallet_travel),
            ),
          ],
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blue.shade600],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.blue.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 25, bottom: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Rp',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                "20.000",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 35),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.adb,
                                color: Colors.white,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  child: Text(
                                    '5150 Points',
                                    style: TextStyle(color: Colors.white),
                                  )),
                              Icon(Icons.arrow_forward, color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Icon(
                                Icons.phone_android,
                                size: 32,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Text('Pay'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Icon(
                                Icons.money,
                                size: 32,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Text('Request'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Icon(
                                Icons.wallet_membership,
                                size: 32,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Text('Top up'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Icon(
                                Icons.wallet_giftcard,
                                size: 32,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Text('Reward'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    alignment: Alignment(-1, 0),
                    child: Text(
                      'Recent Activity',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  Column(
                    children: [
                      Card(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Top Up',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Text(
                                      'Using online banking',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '20.000',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
