import 'package:flutter/material.dart';

class Def extends StatelessWidget {
  const Def({super.key});


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('머리 부분'), backgroundColor: Colors.blue,),
      body: Container(
          child: Column(
            children: [
              Text('Hello World'),
              Text('Flutter'),
              Icon(Icons.local_convenience_store_rounded),
              Image.asset('img.jpg')

            ],
          )
      ),
      bottomNavigationBar: Text('Bottom 부분'),
    ); // Scaffold
  }
}