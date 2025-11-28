import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/responsive.dart';

import 'item_info_contact.dart';

class CardInfoContact extends StatelessWidget {
  const CardInfoContact({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: Card(
        child: Padding(
          padding: Responsive.isMobile(context)
              ? EdgeInsets.all(8)
              : EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 13,
            children: const [
              Text(
                'Informações de Contato',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              ItemInfoContact(
                icon: FontAwesomeIcons.envelope,
                title: 'Email',
                description: 'rodrigomagalski.dev@gmail.com',
              ),
              ItemInfoContact(
                icon: FontAwesomeIcons.phone,
                title: 'Telefone',
                description: '+55 55 99927-7110',
              ),
              ItemInfoContact(
                icon: FontAwesomeIcons.locationDot,
                title: 'Localização',
                description: 'Frederico Westphalen-RS, Brasil',
              ),
              ItemInfoContact(
                icon: FontAwesomeIcons.linkedinIn,
                title: 'LinkedIn',
                description: 'linkedin.com/in/rodrigo-magalski-rubin/',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
