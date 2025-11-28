import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive.dart';
import 'package:portfolio/features/home/presentation/widgets/skills/other_skills.dart';
import 'card_skill.dart';
import '../../../data/skill_list.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.isMobile(context)
          ? EdgeInsets.symmetric(vertical: 30, horizontal: 10)
          : EdgeInsets.all(35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 30,
        children: [
          Text(
            'Habilidades Técnicas',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'Tecnologias e ferramentas que domino para criar sites e aplicativos excepcionais',
            textAlign: TextAlign.center,
          ),
          Wrap(
            spacing: 30,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CardSkill('Aplicativos', mobileSkills),
              CardSkill('Sites', frontendSkills),
              CardSkill('Backend', backendSkills),
            ],
          ),
          OtherSkills(skills: otherSkills),
        ],
      ),
    );
  }
}
