import 'package:flutter/material.dart';
import 'package:my_website/widgets/about_section.dart';
import 'package:my_website/widgets/contact_section.dart';
import 'package:my_website/widgets/experience_section.dart';
import 'package:my_website/widgets/header_section.dart';
import 'package:my_website/widgets/home_section.dart';
import 'package:my_website/widgets/projects_section.dart';
import 'package:my_website/widgets/skills_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: mobileDrawer(context),

      body: Column(
        children: [
          // Header Section
          SizedBox(height: 80, child: HeaderSection()),

          // Main
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Home Section
                  HomeSection(),

                  SizedBox(height: 32),

                  // About Section
                  AboutSection(),
                  SizedBox(height: 32),

                  // Experience Section
                  ExperienceSection(),
                  SizedBox(height: 32),

                  // Project Section
                  ProjectsSection(),
                  SizedBox(height: 32),

                  // Skills Section
                  SkillsSection(),
                  SizedBox(height: 32),

                  // Contact Section
                  ContactSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
