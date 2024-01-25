import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContactList();
}

class _ContactList extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text("通讯录"),
    ));
  }
}
