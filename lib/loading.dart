import 'package:flutter/material.dart';
import 'package:wechat_by_flutter/app.dart';

class LoadingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoadingPage();
}

class _LoadingPage extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/app');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('images/loading.jpg'),
    );
  }
}
