import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = 'sas';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qr scan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  text = await scanner.scan().toString();
                  setState(() {});
                },
                child: Text('Scan'))
          ],
        ),
      ),
    );
  }
}
