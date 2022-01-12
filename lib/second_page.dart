import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Hero(
        tag: 'pp',
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Center(
            child: Container(
              child: Image(
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://inikpop.com/wp-content/uploads/2018/12/jennie.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
