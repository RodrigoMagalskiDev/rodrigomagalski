import 'package:flutter/material.dart';

class JumpingArrow extends StatefulWidget {
  const JumpingArrow({super.key});

  @override
  State<JumpingArrow> createState() => _JumpingArrowState();
}

class _JumpingArrowState extends State<JumpingArrow>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: 0,
      end: 12,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Padding(
          padding: EdgeInsets.only(bottom: _animation.value),
          child: Opacity(
            opacity: 0.5 + (_controller.value * 0.5),
            child: child,
          ),
        );
      },
      child: Icon(Icons.keyboard_arrow_down, size: 48, color: Colors.white),
    );
  }
}
