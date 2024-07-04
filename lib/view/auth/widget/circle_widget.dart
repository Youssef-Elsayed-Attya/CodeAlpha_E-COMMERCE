
import 'package:flutter/material.dart';
class Circle extends StatelessWidget {
  const Circle({
    super.key,
    required this.radius,
    required this.color,
    required this.y,
    required this.x,
  });

  final double radius;
  final double x;
  final double y;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(x, y),
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
