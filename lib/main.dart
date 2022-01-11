import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: 'Nilai');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Text Field'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                  maxLength: 5,
                  decoration: InputDecoration(
                      icon: Icon(Icons.adb),
                      fillColor: Colors.lightBlue[50],
                      filled: true,
                      // prefix: Container(width: 5, height: 5, color: Colors.red),
                      suffix: Container(width: 5, height: 5, color: Colors.red),
                      prefixText: 'Name : ',
                      prefixIcon: Icon(Icons.person),
                      prefixStyle: TextStyle(color: Colors.blue),
                      labelText: "Nama Lengkap",
                      labelStyle: TextStyle(color: Colors.red),
                      hintText: "Nama Lengkap Anda",
                      hintStyle: TextStyle(color: Colors.green),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: controller),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
