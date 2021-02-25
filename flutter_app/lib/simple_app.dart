import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Hello flutter',
      home: Scaffold(
        appBar: AppBar(title: Text('Hello flutter')),
        body: _FirstStatelessWidget(),
      ),
    ));

class _FirstStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('이것은 stateless 위젯입니다.');
  }
}
