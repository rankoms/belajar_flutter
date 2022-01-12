import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          flexibleSpace: Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.all(20),
              child: Text(
                'Persija',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
