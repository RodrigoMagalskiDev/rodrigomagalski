import 'package:flutter/material.dart';
import '../../../../core/utils/responsive.dart';

class HomeHeaderTexts extends StatelessWidget {
  const HomeHeaderTexts({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Padding(
      padding: EdgeInsets.all(isMobile ? 8 : 40),
      child: Column(
        children: [
          Text(
            'Desenvolvimento de Aplicativos',
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(fontSize: isMobile ? 24 : 50),
          ),
          const SizedBox(height: 16),
          const Text('Rodrigo Magalski Rubin', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 32),
          Text(
            'Especializado em criar sites, sistemas e aplicativos mobile inovadores e intuitivos. Transformo ideias em produtos digitais que encantam usuários e impulsionam negócios.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: isMobile ? 14 : 20),
          ),
        ],
      ),
    );
  }
}
