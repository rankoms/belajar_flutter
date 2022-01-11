import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan button'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Press Me')),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [Colors.purple, Colors.pink],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    splashColor: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: Center(
                        child: Text(
                      'My Button',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
