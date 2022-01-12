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
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Contoh Tab Bar'),
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.comment),
                    text: "Comment",
                  ),
                  Tab(
                    child: Image(
                      image: AssetImage('images/facebook.png'),
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.account_circle),
                  ),
                  Tab(
                    text: 'Halo',
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Text("Tab 1"),
                ),
                Center(
                  child: Text("Tab 1"),
                ),
                Center(
                  child: Text("Tab 1"),
                ),
                Center(
                  child: Text("Tab 1"),
                )
              ],
            ),
          ),
        ));
  }
}
