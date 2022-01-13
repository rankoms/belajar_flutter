import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gradient 2'),
        ),
        body: ShaderMask(
          shaderCallback: (rectangle) {
            return LinearGradient(
                    colors: [Colors.blue, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)
                .createShader(
                    Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
          },
          blendMode: BlendMode.dstIn,
          child: Center(
            child: Image(
              width: 300,
              image: AssetImage('images/pemandangan.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
