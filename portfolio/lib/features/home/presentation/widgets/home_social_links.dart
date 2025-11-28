import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_button_home_page.dart';

class HomeSocialLinks extends StatelessWidget {
  const HomeSocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        spacing: 10,
        children: const [
          IconButtonHomePage(
            icon: FontAwesomeIcons.github,
            url: 'https://github.com/RodrigoMagalskiDev',
          ),
          IconButtonHomePage(
            icon: FontAwesomeIcons.linkedin,
            url: 'https://www.linkedin.com/in/rodrigo-magalski-flutter/',
          ),
        ],
      ),
    );
  }
}
