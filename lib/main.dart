import 'package:flutter/material.dart';
import 'package:flutter_application_1/colorful_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('asdaf'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfulButton(Colors.yellow, Colors.blue, Icons.adb),
              ColorfulButton(
                  Colors.yellow, Colors.blue, Icons.add_alarm_rounded),
              ColorfulButton(Colors.yellow, Colors.blue, Icons.facebook),
              ColorfulButton(
                  Colors.yellow, Colors.blue, Icons.add_a_photo_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
