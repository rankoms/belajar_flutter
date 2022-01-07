import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container'),
        ),
        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.red,
                          margin: EdgeInsets.all(5),
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.green,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.blue,
                        ))
                  ],
                )),
            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.yellow,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.blue,
                )),
          ],
        ),
      ),
    );
  }
}
