import 'package:flutter/material.dart';
import 'package:wechat_by_flutter/app.dart';
import 'package:wechat_by_flutter/loading.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF303030),
        scaffoldBackgroundColor: const Color(0xFFEBEBEB),
        cardColor: const Color(0XFF393A3F),
        brightness: Brightness.light,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      routes: {'/app': (context) => App()},
      home: LoadingPage(),
    ));
