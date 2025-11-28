import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/color_helper.dart';
import 'package:portfolio/core/utils/screen_size_helper.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
      child: Center(
        child: Column(
          children: [
            Text('Sobre mim', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 30),
            Text(
              'Desenvolvedor mobile apaixonado por criar experiências digitais excepcionais',
            ),
            SizedBox(height: 30),
            Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 40,
              children: [
                _buildCard(
                  FontAwesomeIcons.medal,
                  '4+',
                  'Anos de Experiência',
                  context,
                ),
                _buildCard(
                  FontAwesomeIcons.arrowsSpin,
                  '5+',
                  'Áreas de Atuação',
                  context,
                ),
                _buildCard(
                  FontAwesomeIcons.medapps,
                  '10+',
                  'Tecnologias Dominadas',
                  context,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: SizedBox(
                  width: context.w(.50),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Text(
                        'Sou um desenvolvedor mobile com mais de 4 anos de experiência criando aplicativos para iOS e Android. Minha paixão é transformar ideias complexas em soluções mobile elegantes e funcionais.\n\nEspecializado em React Native, Flutter e desenvolvimento nativo, trabalho com metodologias ágeis e sempre busco as melhores práticas de desenvolvimento para entregar produtos de alta qualidade.\n\nEstou sempre em busca de novos desafios e oportunidades para criar aplicativos que façam a diferença na vida das pessoas.',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(
    IconData icon,
    String title,
    String description,
    BuildContext context,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: context.w(0.2),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 42,
                  child: Icon(icon, size: 30, color: context.primaryColor),
                ),
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(description, style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
