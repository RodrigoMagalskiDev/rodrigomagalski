import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/responsive.dart';
import 'package:portfolio/core/utils/screen_size_helper.dart';
import 'package:portfolio/features/home/domain/skill.dart';

class CardSkill extends StatefulWidget {
  final String title;
  final List<Skill> skills;
  const CardSkill(this.title, this.skills, {super.key});

  @override
  State<CardSkill> createState() => _CardSkillState();
}

class _CardSkillState extends State<CardSkill> {
  final _textStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: Responsive.isMobile(context) ? double.infinity : context.w(.25),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.copyWith(color: Colors.black),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...widget.skills.map(
                        (skill) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(skill.title, style: _textStyle),
                              const SizedBox(height: 4),
                              SizedBox(
                                width: double.infinity,
                                child: LinearProgressIndicator(
                                  value: skill.proficiency,
                                  backgroundColor: Colors.grey[300],
                                  color: Colors.blue,
                                  minHeight: 8,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
