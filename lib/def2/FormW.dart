import 'package:flutter/material.dart';

class FormW extends StatefulWidget {
  const FormW({super.key});

  @override
  State<FormW> createState() => _FormWState();
}

class _FormWState extends State<FormW> {




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _TextArea()

                ],

              )
            ],
          ),
        )

    );
  }
}

class _TextArea extends StatefulWidget {
  const _TextArea({super.key});

  @override
  State<_TextArea> createState() => _FormAreaState();
}

class _FormAreaState extends State<_TextArea> {

  String? _userName =  null;
  String? _userPassword = null;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 200,
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(label: Text('이름 입력하기')), // Label
            keyboardType: TextInputType.text,  // 핸드폰 배포 시, 키보드 자판 style

            // 이벤트 헨들러 종류, 이벤트 핸들러 중 아무거나 하나는 필수로 챙길 것.
            onChanged: (value) {
              print('${value}');
              setState(() {
                _userName = value ?? '';
              });
            },
          ),


        ),
        Container(
          width: 200,
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(label: Text('비밀번호 입력하기')),
            obscureText: true,
            keyboardType: TextInputType.text,
            onChanged: (value) {
              print('${value}');
              setState(() {
                _userPassword = value ?? '';
              });
            },
          ),
        ),
        ElevatedButton(onPressed: () {
          print('======================');
          print('_userName: ${_userName}');
          print('_userPassword: ${_userPassword}');
        }, child: Text('체크!'))
      ],
    );
  }
}

