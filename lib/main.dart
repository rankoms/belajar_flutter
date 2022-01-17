import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_page.dart';
import 'package:flutter_application_1/post_result_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult? postResult;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Request API'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null) ? 'data' : 'Tidak ada data'),
              ElevatedButton(
                  onPressed: () {
                    PostResult.connectToAPI('Badu', 'Dokter').then((value) {
                      postResult = value;
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
