import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/responsive.dart';
import 'package:portfolio/core/utils/screen_size_helper.dart';
import 'package:portfolio/features/home/presentation/widgets/contact/contact_form_card.dart';
import 'info_contact.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final infoCard = SizedBox(
      height: 360,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
              InfoContact(
                icon: FontAwesomeIcons.envelope,
                title: 'Email',
                description: 'rodrigomagalski.dev@gmail.com',
              ),
              InfoContact(
                icon: FontAwesomeIcons.phone,
                title: 'Telefone',
                description: '+55 55 99927-7110',
              ),
              InfoContact(
                icon: FontAwesomeIcons.locationDot,
                title: 'Localização',
                description: 'Frederico Westphalen-RS, Brasil',
              ),
              InfoContact(
                icon: FontAwesomeIcons.linkedinIn,
                title: 'LinkedIn',
                description: 'linkedin.com/in/rodrigo-magalski-rubin/',
              ),
            ],
          ),
        ),
      ),
    );

    final formCard = SizedBox(height: 550, child: const ContactFormCard());

    return Padding(
      padding: const EdgeInsets.all(50),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Text(
              'Entre em contato comigo!',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 30),
            if (isMobile)
              Column(children: [infoCard, const SizedBox(height: 16), formCard])
            else
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                spacing: 40,
                children: [
                  SizedBox(width: context.w(.35), child: infoCard),
                  SizedBox(width: context.w(.35), child: formCard),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
