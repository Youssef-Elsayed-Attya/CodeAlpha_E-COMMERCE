import 'package:flutter/material.dart';
import 'package:sneakers/theme/custom_app_theme.dart';

class UnderLineText extends StatelessWidget {
  const UnderLineText({
    super.key,
    required this.color,
    required this.text,
    required this.style,
    required this.fun,
  });
  final Color color;
  final String text;
  final TextStyle style;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextButton(
          onPressed: () {

          },
          child: Text(
            text,
            style: style,
          ),
        ),
        TextButton(onPressed: fun, child: Text(
          text,
          style: AppThemes.regularText,
        ),)
      ],
    );
  }
}
