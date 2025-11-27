import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/ui/widgets/gradient_scaffold.dart';
import 'package:portfolio/core/ui/widgets/jumping_arrow.dart';
import 'package:portfolio/core/utils/screen_size_helper.dart';
import 'package:portfolio/features/home/presentation/widgets/icon_button_home_page.dart';
import '../../../../core/utils/responsive.dart';
import '../../../core/ui/widgets/gradient_button.dart';
import 'widgets/cards_about_me.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Responsive.isDesktop(context)
                      ? _buildDesktopLayout(context)
                      : _buildMobileLayout(context),
                  const SizedBox(height: 32),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    alignment: WrapAlignment.spaceEvenly,
                    direction: Axis.vertical,
                    runAlignment: WrapAlignment.spaceEvenly,
                    spacing: 16,
                    // runSpacing: 16,
                    children: [
                      GradientButton(
                        filled: true,
                        onPressed: () {},
                        title: 'Ver Projetos',
                      ),
                      GradientButton(
                        filled: false,
                        onPressed: () {},
                        title: 'Entrar em Contato',
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.all(10),
                    child: Row(
                      spacing: 10,
                      children: [
                        IconButtonHomePage(
                          icon: FontAwesomeIcons.github,
                          url: 'https://github.com/RodrigoMagalskiDev',
                        ),
                        IconButtonHomePage(
                          icon: FontAwesomeIcons.linkedin,
                          url:
                              'https://www.linkedin.com/in/rodrigo-magalski-flutter/',
                        ),
                      ],
                    ),
                  ),
                  Center(child: const JumpingArrow()),
                  CardsAboutMe(),
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: Responsive.isMobile(context)
                          ? double.maxFinite
                          : context.w(0.6),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'Sou um desenvolvedor mobile com mais de 5 anos de experiência criando aplicativos para iOS e Android. Minha paixão é transformar ideias complexas em soluções mobile elegantes e funcionais.\n\nEspecializado em React Native, Flutter e desenvolvimento nativo, trabalho com metodologias ágeis e sempre busco as melhores práticas de desenvolvimento para entregar produtos de alta qualidade.\n\nEstou sempre em busca de novos desafios e oportunidades para criar aplicativos que façam a diferença na vida das pessoas.',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      children: [
        _buildTexts(context),
        const SizedBox(height: 20),
        Image.asset('assets/images/mobile_dev.png', height: 260),
      ],
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(flex: 3, child: _buildTexts(context)),
        const SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: Image.asset('assets/images/mobile_dev.png', height: 380),
        ),
      ],
    );
  }

  Widget _buildTexts(BuildContext context) {
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
            style: TextStyle(fontSize: isMobile ? 16 : 20),
          ),
        ],
      ),
    );
  }
}
