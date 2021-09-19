import 'package:flutter/material.dart';
class Box extends StatelessWidget {
  final int height;
  Box(this.height);
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height.toDouble(),);
  }
}
