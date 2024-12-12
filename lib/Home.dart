import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});


@override
Widget build(BuildContext context) {
  return new Scaffold(
    appBar: AppBar(title: Text('머리 부분'), backgroundColor: Colors.blue,),
    body: Container(
      child: Column(
        children: [
          ElevatedButton(onPressed: () {
            print('Hi');
            Navigator.pushNamed(context,'/def');
          }, child: Text('기본 Widget'))
        ],
      )
    ),
    bottomNavigationBar: Text('Bottom 부분'),
    ); // Scaffold
  }
}