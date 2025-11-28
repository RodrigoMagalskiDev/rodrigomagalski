// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Skill {
  final String title;
  final String type;
  final double? proficiency;

  Skill({required this.title, required this.type, this.proficiency});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'type': type,
      'proficiency': proficiency,
    };
  }

  factory Skill.fromMap(Map<String, dynamic> map) {
    return Skill(
      title: (map['title'] ?? '') as String,
      type: (map['type'] ?? '') as String,
      proficiency: (map['proficiency'] ?? 0.0) as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Skill.fromJson(String source) =>
      Skill.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Skill(title: $title, type: $type, proficiency: $proficiency)';
}
