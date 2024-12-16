import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row Column'), // 윗 부분
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
          children: [
            // 첫 번째 줄: 별 3개
            Row(
              children: [
                Icon(Icons.star, size: 50),
                Icon(Icons.star, size: 50),
                Icon(Icons.star, size: 50),
              ],
            ),
            SizedBox(height: 10), // 줄 간격
            // 두 번째 줄: 별 2개
            Row(
              children: [
                Icon(Icons.star, size: 50),
                Icon(Icons.star, size: 50),
              ],
            ),
            SizedBox(height: 10), // 줄 간격

            // 세 번째 줄: 별 1개
            Row(
              children: [
                Icon(Icons.star, size: 50),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈', // 홈 버튼
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '검색', // 검색 버튼
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '프로필', // 프로필 버튼
            ),
          ],

        ),
      ),
    );
  }
}
