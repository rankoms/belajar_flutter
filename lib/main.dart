import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.amber,
            flexibleSpace: Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  'Persija Jakarta',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
