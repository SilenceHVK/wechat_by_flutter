import 'package:flutter/material.dart';

class DividingLine extends StatelessWidget {
  final _lineHight = 1.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: _lineHight,
          color: Colors.white,
        ),
        Container(
          height: _lineHight,
        )
      ],
    );
  }
}
