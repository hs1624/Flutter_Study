import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0; // 좋아요 수를 저장

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('좋아요 기능'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 좋아요 표시 Row
                Row(
                  children: [
                    const Icon(Icons.favorite, color: Colors.red),
                    const SizedBox(width: 5),
                    const Text('좋아요'),
                    const SizedBox(width: 10),
                    Text('$count'), // count 값 표시
                  ],
                ),
                const SizedBox(height: 20),
                // 버튼 Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          if (count > 0) count--;
                        });
                      },
                      child: const Icon(Icons.remove),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          count = 0;
                        });
                      },
                      child: const Icon(Icons.star),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                // 이미지 추가
                _Img(),
              ],
            ),
          ],
        ),
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
