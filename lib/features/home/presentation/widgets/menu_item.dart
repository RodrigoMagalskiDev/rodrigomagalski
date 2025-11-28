import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const MenuItem({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Text(title, style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
