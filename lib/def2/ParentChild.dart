import 'package:flutter/material.dart';

class ParentChild extends StatefulWidget {
  const ParentChild({super.key});

  @override
  State<ParentChild> createState() => _ParentChildState();
}

class _ParentChildState extends State<ParentChild> {
  int _count = 0;

  String textFind() {
    return "Hello";
  }

  Container buttonArea() {
    return Container(
      margin: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  Text helloWord() {
    return Text(
      "Hello World",
      style: styleText123(49.9),
    );
  }

  TextStyle styleText123(double outValue) {
    return TextStyle(fontSize: outValue ?? 40.0);
  }

  // 자식이 부모를 호출 (React의 리듀서 원리)
  void parentCall(String val) {
    print('부모 호출!!!! $val');
    if (val.isNotEmpty && val == 'add') {
      addCount();
    }
    if (val.isNotEmpty && val == 'remove') {
      removeCount();
    }
    if (val.isNotEmpty && val == 'reset') {
      resetCount();
    }
  }

  /**
   * count + 기능
   */
  void addCount() {
    setState(() {
      _count++;
    });
  }

  /**
   * count - 기능
   */
  void removeCount() {
    setState(() {
      _count--;
    });
  }

  /**
   * count 0으로 초기화
   */
  void resetCount() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('부모, 자식 전달하기'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text('count: $_count'), // 카운트 윗동네

                      // 카운트 버튼 영역
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(16),
                            child: ElevatedButton(
                              onPressed: addCount,
                              child: Icon(Icons.add),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(16),
                            child: ElevatedButton(
                              onPressed: removeCount,
                              child: Icon(Icons.remove),
                            ),
                          ),
                          buttonArea(),
                        ],
                      ), // 카운트 버튼 영역 끝
                    ],
                  ),
                ),
                Text('아래의 영역'),
                _Child(childCnt: _count),
                _Child2(onEvt: parentCall)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _Child2 extends StatelessWidget {
  final Function(String) onEvt;

  const _Child2({required this.onEvt, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600,
        height: 100,
        decoration: BoxDecoration(
            border: Border.all(width: 5, color: Colors.blueAccent)),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: FloatingActionButton(
                onPressed: () {
                  onEvt('add'); // 부모의 add 호출
                },
                child: Icon(Icons.add),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: FloatingActionButton(
                onPressed: () {
                  onEvt('remove'); // 부모의 remove 호출
                },
                child: Icon(Icons.remove),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: FloatingActionButton(
                onPressed: () {
                  onEvt('reset'); // 부모의 reset 호출
                },
                child: Icon(Icons.star),
              ),
            )
          ],
        ));
  }
}

class _Child extends StatelessWidget {
  final int childCnt;

  const _Child({required this.childCnt, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(width: 5, color: Colors.redAccent)),
      child: Text('부모로부터 받은 값: $childCnt'),
    );
  }
}
