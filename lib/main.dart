import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ini  Image 2"),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(5),
            color: Colors.red,
            child: Image(
              image: AssetImage('images/100.png'),
              // fit: BoxFit.cover,
              // repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
