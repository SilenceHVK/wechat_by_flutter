import 'package:flutter/material.dart';

class Cell extends StatefulWidget {
  final String title;
  final String? imageName;
  final String? subTitle;
  final String? subImageName;

  const Cell({
    required this.title,
    this.imageName,
    this.subTitle,
    this.subImageName,
  });

  @override
  State<StatefulWidget> createState() => _Cell();
}

class _Cell extends State<Cell> {
  Color _currentColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          _currentColor = Colors.grey;
        });
      },
      onTapUp: (details) {
        setState(() {
          _currentColor = Colors.white;
        });
      },
      onTapCancel: () {
        setState(() {
          _currentColor = Colors.white;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        color: _currentColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget.imageName == null
                ? Icon(
                    Icons.bookmark_border_rounded,
                    color: Colors.grey[500],
                  )
                : Image.asset(
                    widget.imageName!,
                    width: 25,
                  ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                widget.title,
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w200),
              ),
            )),
            widget.subTitle == null ? const Text('') : Text(widget.subTitle!),
            widget.subImageName == null
                ? Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey[500],
                  )
                : Image.asset(
                    widget.subImageName!,
                    width: 25,
                  ),
          ],
        ),
      ),
    );
  }
}
