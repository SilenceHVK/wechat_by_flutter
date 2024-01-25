import 'package:flutter/material.dart';

class Wechat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Wechat();
}

class _Wechat extends State<Wechat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text("微信"),
    ));
  }
}
