import 'package:flutter/material.dart';
import 'package:portfolio/core/ui/widgets/menu_item.dart';
import 'package:portfolio/core/utils/constants.dart';
import 'package:portfolio/core/utils/responsive.dart';

class GradientScaffold extends StatelessWidget {
  final Widget body;
  const GradientScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: Drawer(),
      appBar: AppBar(
        title: const Text('RMR.dev'),
        actionsPadding: const EdgeInsets.only(right: 100),
        actions: Responsive.isDesktop(context)
            ? [
                MenuItem(title: 'Sobre', onTap: () {}),
                MenuItem(title: 'Projetos', onTap: () {}),
                MenuItem(title: 'Habilidades', onTap: () {}),
                MenuItem(title: 'Contato', onTap: () {}),
              ]
            : [],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 1,
            stops: [0, 2],
            center: Alignment.center,
            transform: GradientRotation(2),
            colors: Constants.gradientColors,
          ),
        ),
        child: body,
      ),
    );
  }
}
