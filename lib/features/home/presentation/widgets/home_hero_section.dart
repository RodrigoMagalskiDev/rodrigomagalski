import 'package:flutter/material.dart';
import '../../../../core/utils/responsive.dart';
import 'home_header_texts.dart';

class HomeHeroSection extends StatelessWidget {
  const HomeHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(flex: 3, child: HomeHeaderTexts()),
          const SizedBox(width: 20),
          Expanded(
            flex: 2,
            child: Image.asset('assets/images/mobile_dev.png', height: 380),
          ),
        ],
      );
    }

    return Column(
      children: [
        const HomeHeaderTexts(),
        const SizedBox(height: 20),
        Image.asset('assets/images/mobile_dev.png', height: 150),
      ],
    );
  }
}
