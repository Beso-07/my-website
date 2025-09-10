import 'package:flutter/material.dart';
import 'package:my_website/constrants/contants.dart';
import 'package:my_website/widgets/skills_components.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64),
      child: Column(
        children: [
          /// Section Title
          Column(
            children: [
              const Text(
                'Skills, Tools',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(width: 150, height: 3, color: Responsive.kPrimaryColor),
            ],
          ),
          const SizedBox(height: 32),

          /// Skills Row
          Responsive.isDesktop(context)
              ? SizedBox(
                width: MediaQuery.of(context).size.width * .55,
                child: SkillsComponents(),
              )
              : SkillsComponents(),
        ],
      ),
    );
  }
}
