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
          }, child: Text('기본 Widget')),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: () {
            print('Hi');
            Navigator.pushNamed(context,'/rowColumn');
          }, child: Text('Row Column 사용')),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/boxcon');
          }, child: Text('Box 꾸미기')),SizedBox(height: 10,),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/con2');
          }, child: Text('Box 꾸미기2')),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/counter');
          }, child: Text('카운터')),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/p&c');
          }, child: Text('부모와자식')),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/form');
          }, child: Text('문자 입력')),
          

        ],
      )
    ),
    bottomNavigationBar: Text('Bottom 부분'),
    ); // Scaffold
  }
}