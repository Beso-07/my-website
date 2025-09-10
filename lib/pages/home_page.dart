import 'package:flutter/material.dart';
import 'package:my_website/widgets/about_section.dart';
import 'package:my_website/widgets/contact_section.dart';
import 'package:my_website/widgets/experience_section.dart';
import 'package:my_website/widgets/header_section.dart';
import 'package:my_website/widgets/home_section.dart';
import 'package:my_website/widgets/projects_section.dart';
import 'package:my_website/widgets/skills_section.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final keys = {
      "Home": homeKey,
      "About": aboutKey,
      "Experience": experienceKey,
      "Projects": projectsKey,
      "Skills": skillsKey,
      "Contact": contactKey,
    };

    return Scaffold(
      endDrawer: mobileDrawer(context, scrollToSection, keys),
      body: Column(
        children: [
          // Header Section
          SizedBox(
            height: 80,
            child: HeaderSection(scrollToSection: scrollToSection, keys: keys),
          ),

          // Main
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Home Section
                  Container(
                    key: homeKey,
                    child: HomeSection(
                      contactKey: contactKey,
                      projectsKey: projectsKey,
                    ),
                  ),
                  const SizedBox(height: 64),

                  // About Section
                  Container(key: aboutKey, child: AboutSection()),
                  const SizedBox(height: 180),

                  // Experience Section
                  Container(key: experienceKey, child: ExperienceSection()),
                  const SizedBox(height: 32),

                  // Project Section
                  Container(key: projectsKey, child: ProjectsSection()),
                  const SizedBox(height: 64),

                  // Skills Section
                  Container(key: skillsKey, child: SkillsSection()),
                  const SizedBox(height: 120),

                  // Contact Section
                  Container(key: contactKey, child: ContactSection()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
