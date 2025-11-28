import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool filled;
  final String title;
  final double? width;
  final EdgeInsetsGeometry? padding;

  const GradientButton({
    super.key,
    required this.onPressed,
    required this.filled,
    required this.title,
    this.width,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(30),
      child: Ink(
        decoration: BoxDecoration(
          color: filled ? null : Colors.white,
          gradient: filled
              ? LinearGradient(colors: [Color(0xFF0152ad), Color(0xFF00bdb4)])
              : null,
          borderRadius: BorderRadius.circular(30),
          border: filled ? null : Border.all(color: Colors.blue, width: 2),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: onPressed,
          child: Container(
            width: width,
            padding: padding ??
                const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(color: filled ? Colors.white : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
