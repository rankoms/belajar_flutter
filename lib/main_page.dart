import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Latihan Media Query'),
        ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(children: methodContainer)
            : Row(children: methodContainer));
  }

  List<Widget> get methodContainer {
    return [
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.orange,
        width: 100,
        height: 100,
      ),
    ];
  }
}
