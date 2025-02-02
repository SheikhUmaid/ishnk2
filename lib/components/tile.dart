import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  double height;
  double width;
  Color color;
  Text text;
  Tile(
      {super.key,
      required this.height,
      required this.width,
      required this.color,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(child: text),
      ),
    );
  }
}
