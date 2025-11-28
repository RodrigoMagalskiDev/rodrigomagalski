import 'package:flutter/material.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/ui/widgets/gradient_button.dart';

class HomeCtaButtons extends StatelessWidget {
  const HomeCtaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final isWide = Responsive.isTablet(context) || Responsive.isDesktop(context);
    final btnWidth = isWide ? 220.0 : null;
    final btnPadding = isWide
        ? const EdgeInsets.symmetric(vertical: 10, horizontal: 16)
        : null;

    if (isMobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GradientButton(
            filled: true,
            onPressed: () {},
            title: 'Ver Projetos',
            width: btnWidth,
            padding: btnPadding,
          ),
          const SizedBox(height: 16),
          GradientButton(
            filled: false,
            onPressed: () {},
            title: 'Entrar em Contato',
            width: btnWidth,
            padding: btnPadding,
          ),
        ],
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GradientButton(
          filled: true,
          onPressed: () {},
          title: 'Ver Projetos',
          width: btnWidth,
          padding: btnPadding,
        ),
        const SizedBox(width: 16),
        GradientButton(
          filled: false,
          onPressed: () {},
          title: 'Entrar em Contato',
          width: btnWidth,
          padding: btnPadding,
        ),
      ],
    );
  }
}
