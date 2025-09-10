import 'package:flutter/material.dart';
import 'package:my_website/constrants/list_items.dart';

class SkillsComponents extends StatelessWidget {
  const SkillsComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 10,
      alignment: WrapAlignment.center,
      children: [
        for (int i = 0; i < skillItems.length; i++)
          Chip(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            label: Text(skillItems[i]['title']),
            avatar:
                skillItems[i]['icon'] != null
                    ? Image.asset(skillItems[i]['icon'], width: 20, height: 20)
                    : null,
          ),
      ],
    );
  }
}
