import 'package:flutter/material.dart';

class JumpingArrow extends StatefulWidget {
  const JumpingArrow({super.key});

  @override
  State<JumpingArrow> createState() => _JumpingArrowState();
}

class _JumpingArrowState extends State<JumpingArrow>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fade;
  late final Animation<double> _offset;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);

    _fade = Tween<double>(
      begin: 0.4,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _offset = Tween<double>(
      begin: -8,
      end: 8,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: AnimatedBuilder(
        animation: _controller,
        child: const Icon(
          Icons.keyboard_arrow_down,
          size: 48,
          color: Colors.white,
        ),
        builder: (_, child) {
          return Opacity(
            opacity: _fade.value,
            child: Transform.translate(
              offset: Offset(0, _offset.value),
              child: child,
            ),
          );
        },
      ),
    );
  }
}
