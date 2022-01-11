import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title: Text(
            'App Example',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(onPressed: null, icon: Icon(Icons.settings)),
            IconButton(onPressed: null, icon: Icon(Icons.exit_to_app))
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pattern.jpg'),
                    fit: BoxFit.none,
                    repeat: ImageRepeat.repeat),
                gradient: LinearGradient(
                    colors: [Color(0xff0096ff), Color(0xff6610f2)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight)),
          ),
        ),
      ),
    );
  }
}
