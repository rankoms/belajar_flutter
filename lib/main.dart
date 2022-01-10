import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          color: Colors.white,
                        ),
                        flex: 1,
                      ),
                      Flexible(
                        child: Container(
                          color: Colors.black12,
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Row(children: [
                    Flexible(
                      child: Container(
                        color: Colors.black12,
                      ),
                      flex: 1,
                    ),
                    Flexible(
                      child: Container(
                        color: Colors.white,
                      ),
                      flex: 1,
                    )
                  ]),
                  flex: 1,
                )
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di tengan lapisan stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di tengan lapisan stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di tengan lapisan stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di tengan lapisan stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di tengan lapisan stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di tengan lapisan stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di tengan lapisan stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di tengan lapisan stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di tengan lapisan stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                  ],
                )
              ],
            ),
            Align(
                alignment: Alignment(0, 1),
                child:
                    ElevatedButton(onPressed: null, child: Text('My Button')))
          ],
        ),
      ),
    );
  }
}
