import 'package:flutter/material.dart';


class BoxCon extends StatelessWidget {
  const BoxCon ({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'sunflower',
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: Colors.white70,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'parisienne'
          )
        ),
      ),

      home: Scaffold(
          appBar: AppBar(title: Text('Box 꾸미기',
            style: textTheme.displayLarge,),
            backgroundColor: Colors.amberAccent,
          ),

          body: Container(
            margin: EdgeInsets.only(left: 15),
            width: 100,
            height: 100,

            decoration: BoxDecoration(
              color: Colors.yellowAccent,
              border: Border.all(
                width: 16,
                color: Colors.indigo,

            ),
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(colors: [Colors.red,Colors.blueAccent],begin: Alignment.topLeft, end: Alignment.bottomRight)
            ),
            child: Column(
              children: [
                Text('Hello', style: textTheme.displayLarge,),
                Icon(Icons.stars)
              ],
            ),
          )
      ),
    );
  }
}





