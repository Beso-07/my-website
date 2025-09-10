import 'package:flutter/material.dart';
import 'package:my_website/constrants/contants.dart';
import 'package:my_website/models/expeience_model.dart';
import 'package:my_website/widgets/experience_card.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          // title
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Experience',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 150,
                    height: 3,
                    color: Responsive.kPrimaryColor,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 32),

          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1200),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: [
                for (int i = 0; i < experiences.length; i++)
                  ExperienceCard(experince: experiences[i]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
