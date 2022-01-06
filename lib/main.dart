import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Randy Komara'),
        ),
        body: Column(
          children: [
            Text('Test 1'),
            Text('Test 2'),
            Text('Test 3'),
            Row(
              children: [Text('Test 1'), Text('Test 2'), Text('Test 3')],
              // mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}
