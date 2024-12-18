import 'package:flutter/material.dart';

class Con2 extends StatelessWidget {
  const Con2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: '', // 기본 폰트를 sunflower로 설정
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [

              // const _Top(),
              const SizedBox(height: 20),
              // Counter 위젯 호출
              const ConCounter(),
              const SizedBox(height: 20),
              // 이미지 추가
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
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            '너와나',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const Text(
            'Flutter',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
              fontFamily: '', // parisienne 폰트를 특정 텍스트에 적용
            ),
          ),
          const Text(
            '2024.12.13',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 16),
          const Icon(
            Icons.favorite,
            color: Colors.redAccent,
            size: 40,
          ),
          const SizedBox(height: 16),
          const Text(
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

class ConCounter extends StatefulWidget {
  const ConCounter({super.key});

  @override
  State<ConCounter> createState() => _CounterState();
}

class _CounterState extends State<ConCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            'U&I',
            style: TextStyle(
              fontFamily: 'parisienne',
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            '플러터 처음 만난 날',
            style: TextStyle(
              fontFamily: 'sunflower',
              fontSize: 26,
            ),
          ),
          const Text('2024.12.13'),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Text(
                  "$count",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'D+100',
            style: TextStyle(
              fontFamily: 'sunflower',
              fontSize: 26,
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
        'assets/img.jpg',
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }
}
