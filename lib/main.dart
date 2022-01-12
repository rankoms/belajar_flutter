import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicatorColor: Colors.red,
      indicator: BoxDecoration(
          color: Colors.green,
          border: Border(bottom: BorderSide(color: Colors.purple, width: 5))),
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
      ],
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Contoh Tab Bar'),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                  child: Container(color: Colors.amber, child: myTabBar)),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Text("Tab 1"),
                ),
                Center(
                  child: Text("Tab 1"),
                ),
              ],
            ),
          ),
        ));
  }
}
