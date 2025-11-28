import 'package:flutter/material.dart';
import 'package:portfolio/core/ui/widgets/jumping_arrow.dart';
import 'package:portfolio/core/utils/color_helper.dart';
import 'package:portfolio/features/home/presentation/widgets/contact/contact_widget.dart';
import '../../../../core/utils/responsive.dart';
import 'widgets/menu_item.dart';
import '../../../core/utils/constants.dart';
import 'widgets/about_me.dart';
import 'widgets/home_hero_section.dart';
import 'widgets/home_cta_buttons.dart';
import 'widgets/home_social_links.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();
  final _homeKey = GlobalKey<FormState>();
  final _aboutMeKey = GlobalKey<FormState>();
  final _projectsKey = GlobalKey<FormState>();
  final _skillsKey = GlobalKey<FormState>();
  final _contactKey = GlobalKey<FormState>();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context == null) return;

    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: Drawer(),
      appBar: AppBar(
        title: InkWell(
          onTap: () => scrollToSection(_homeKey),
          child: const Text('RMR.dev'),
        ),
        actionsPadding: const EdgeInsets.only(right: 100),
        actions: Responsive.isDesktop(context)
            ? [
                MenuItem(
                  title: 'Sobre',
                  onTap: () => scrollToSection(_aboutMeKey),
                ),
                MenuItem(
                  title: 'Projetos',
                  onTap: () => scrollToSection(_projectsKey),
                ),
                MenuItem(
                  title: 'Habilidades',
                  onTap: () => scrollToSection(_skillsKey),
                ),
                MenuItem(
                  title: 'Contato',
                  onTap: () => scrollToSection(_contactKey),
                ),
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
        child: Scrollbar(
          thumbVisibility: true,
          thickness: 10,
          controller: _scrollController,
          child: SafeArea(
            top: true,
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 130,
                  horizontal: 100,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Container(
                        key: _homeKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const HomeHeroSection(),
                            const HomeCtaButtons(),
                            const HomeSocialLinks(),
                            SizedBox(height: 60),
                            Center(child: const JumpingArrow()),
                            KeyedSubtree(
                              key: _aboutMeKey,
                              child: const AboutMe(),
                            ),
                            KeyedSubtree(
                              key: _contactKey,
                              child: const ContactWidget(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Text(
                            'Desenvolvido com Flutter por Rodrigo Magalski Rubin',
                            style: TextStyle(color: context.primaryColor),
                          ),
                          Text(
                            '© 2025 Todos os direitos reservados',
                            style: TextStyle(color: context.primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
