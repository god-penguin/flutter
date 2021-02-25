import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Hello flutter',
      home: Scaffold(
        appBar: AppBar(title: Text('Hello flutter')),
        body: _MyStatefulWidget(),
      ),
    ));

class _MyStatefulWidget extends StatefulWidget {
  @override
  State createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<_MyStatefulWidget> {
  String _buttonState;

  @override
  void initState() {
    super.initState();
    print('initState():기본값을 설정합니다.');
    _buttonState = 'OFF';
  } //단한번 호출, 초기화

  @override
  void didChangeDependencies() {
    print('didChangeDependencies() 호출됨');
  } //상태 객체 의존성이 변경되면 호출

  @override //위젯 화면을 표시하는 필수 메서드, 화면에 표시할 메서드를 반환하여야함
  Widget build(BuildContext context) {
    print('build()호출됨');
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('버튼을 누르세요'),
          onPressed: _onClick,
        ),
        Row(
          children: <Widget>[
            Text('버튼상태'),
            Text(_buttonState),
          ],
        )
      ],
    );
  }

  void _onClick() {
    print('_onClick() 호출됨');
    setState(() {
      print('setState() 호출됨');
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
      } else {
        _buttonState = 'OFF';
      }
    });
  }

  @override //위젯의 설정이 변경될 떄 호출됨
  void didUpdateWidget(_MyStatefulWidget oldWidget) {
    print('didUpdateWidget()');
  }

  // @override //위젯의 상태를 갱신, 위젯을 처음부터 만들지만 initState()는 무시하고 호출
  // void setState(VoidCallback fn) {}

  @override //상태캑체가 위젯ㅌ,리에서 제거죔
  void deactivate() {
    print('deactivate');
  }

  @override // 상태겍체 완전제거 재사용 불가
  void dispose() {
    print('dispose');
  }
}
