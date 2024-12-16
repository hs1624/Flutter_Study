import 'package:flutter/material.dart';

class Con2 extends StatelessWidget {
  const Con2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'sunflower', // 기본 폰트를 sunflower로 설정
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // _Top 위젯 호출
              _Top(),
              _Img(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Top extends StatelessWidget {
  const _Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            '너와나',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          Text(
            'Flutter',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
              fontFamily: 'parisienne', // parisienne 폰트를 특정 텍스트에 적용
            ),
          ),
          Text(
            '2024.12.13',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 16),
          Icon(
            Icons.favorite,
            color: Colors.redAccent,
            size: 40,
          ),
          SizedBox(height: 16),
          Text(
            'D+100',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _Img extends StatelessWidget {
  const _Img({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/img.jpg', // 이미지 경로 확인
      ),
    );
  }
}
