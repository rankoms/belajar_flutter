import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;
  List<Widget> widgets = [];
  // _MyAppState() {
  //   for (int i = 0; i < 15; i++) {
  //     widgets.add(Text(
  //       'Data Ke ' + i.toString(),
  //       style: TextStyle(fontSize: 24),
  //     ));
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello List VIew'),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.add(Text('Data ke -' + counter.toString()));
                        counter++;
                      });
                    },
                    child: Text('Tambah Data')),
                ElevatedButton(onPressed: null, child: Text('Hapus Data'))
              ],
            ),
            Column(
              children: widgets,
              crossAxisAlignment: CrossAxisAlignment.start,
            )
          ],
        ),
      ),
    );
  }
}
