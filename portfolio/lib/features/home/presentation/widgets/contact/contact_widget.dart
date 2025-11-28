import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive.dart';
import 'package:portfolio/core/utils/screen_size_helper.dart';
import 'package:portfolio/features/home/presentation/widgets/contact/contact_form_card.dart';
import 'card_info_contact.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final widthDefault = isMobile ? context.w(.9) : context.w(.35);

    final infoCard = CardInfoContact();
    final formCard = SizedBox(height: 550, child: const ContactFormCard());

    return Padding(
      padding: Responsive.isMobile(context)
          ? EdgeInsets.all(8)
          : EdgeInsets.all(50),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Text(
              'Entre em contato comigo!',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 40,
              children: [
                SizedBox(width: widthDefault, child: infoCard),
                SizedBox(width: widthDefault, child: formCard),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
