import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_page.dart';
import 'package:flutter_application_1/post_result_model.dart';
import 'package:flutter_application_1/user_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult? postResult;
  User? user;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Request APIafasd'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((user != null) ? 'data' : 'Tidak ada data'),
              ElevatedButton(
                  onPressed: () {
                    User.connectToAPI('3').then((value) {
                      // print(postResult?.name);
                      user = value;
                      // print(postResult?.name);

                      // log('data: $value');
                      setState(() {});
                    });
                  },
                  child: Text('POST'))
            ],
          ),
        ),
      ),
    );
  }
}
