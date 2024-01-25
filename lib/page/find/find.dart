import 'package:flutter/material.dart';

class Find extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Find();
}

class _Find extends State<Find> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text("发现"),
    ));
  }
}
