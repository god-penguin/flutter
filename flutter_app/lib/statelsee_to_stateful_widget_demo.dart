import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Hello flutter',
      home: Scaffold(
        appBar: AppBar(title: Text('Hello flutter')),
        body: _FirstStatefulWidget(),
      ),
    ));

class _FirstStatefulWidget extends StatefulWidget {
  @override
  State createState() => _FirstStatefulWidgetState();
}

class _FirstStatefulWidgetState extends State<_FirstStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Text('이것은 stateful widget 입니다.');
  }
}
