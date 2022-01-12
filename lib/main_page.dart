import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lataihan Hero animation'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              child: Image(
                width: 100,
                height: 100,
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
