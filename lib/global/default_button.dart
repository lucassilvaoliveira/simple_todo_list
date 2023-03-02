import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Size size;
  final String text;
  final Function() press;
  final double height;
  final double width;
  final Color color;

  const DefaultButton({
    super.key,
    required this.size,
    required this.text,
    required this.press,
    required this.height,
    required this.width,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
