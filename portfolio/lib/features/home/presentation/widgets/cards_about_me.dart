import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/color_helper.dart';
import 'package:portfolio/core/utils/screen_size_helper.dart';

class CardsAboutMe extends StatelessWidget {
  const CardsAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
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
              Center(child: Icon(icon, size: 30, color: context.primaryColor)),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(description, style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
