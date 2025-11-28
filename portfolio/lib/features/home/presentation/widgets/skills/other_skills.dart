import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive.dart';
import 'package:portfolio/core/utils/screen_size_helper.dart';
import 'package:portfolio/features/home/domain/skill.dart';

class OtherSkills extends StatelessWidget {
  final List<Skill> skills;
  const OtherSkills({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.isMobile(context) ? double.infinity : context.w(0.7),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                'Outras Competências',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.copyWith(color: Colors.black),
              ),
              const SizedBox(height: 15),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 10,
                children: [
                  ...skills.map((skill) => Chip(label: Text(skill.title))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
