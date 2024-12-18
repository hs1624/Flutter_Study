void main() {
  // List 선언 및 초기화
  List<String> lists = [];
  List<String>? lists1;

  // lists에 값 추가
  lists = ['Apple', 'Banana'];

  // lists의 값 출력
  for (int i = 0; i < lists.length; i++) {
    print('lists의 값: ${lists[i]}');
  }


  var arr = [1, 2, 3];
  List<int> lists2 = List.from(arr);

  // lists2의 값 출력
  lists2.forEach((item) {
    print('값: ${item}');
  });

  lists2.add(4);

  var a1 = lists2.map(
      (item) => 1000+item
  );

  a1.forEach((item) {
    print('값: ${item}');
  });

  a1.forEach(print);

  final List<int> years = List.generate(41, (index) => 1984+ index);
  years.forEach(print);

}
