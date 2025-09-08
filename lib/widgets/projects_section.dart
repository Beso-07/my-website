import 'package:flutter/material.dart';
import 'package:my_website/constrants/contants.dart';
import 'package:my_website/models/project_model.dart';
import 'package:my_website/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 8),
    
      //padding: const EdgeInsets.fromLTRB(25, 20, 25, 50),
      child: Column(
        children: [
          // title
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Projects',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 250,
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
                for (int i = 0; i < projects.length; i++)
                  ProjectCard(project: projects[i]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
