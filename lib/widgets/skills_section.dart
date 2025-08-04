// lib/widgets/skills_section.dart
import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      'Flutter',
      'Dart',
      'Core Java',
      'REST',
      'GraphQL',
      'MQTT',
      'Hive',
      'MySQL',
      'GetX',
      'Provider',
      'BLoC',
      'MVC',
      'MVVM'
    ];

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Skills',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            children: skills
                .map((skill) => Chip(
                      label: Text(skill),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
