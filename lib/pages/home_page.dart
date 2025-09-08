import 'package:flutter/material.dart';
import 'package:my_website/constrants/contants.dart';
import 'package:my_website/constrants/images_path.dart';
import 'package:my_website/models/project_model.dart';
import 'package:my_website/widgets/about_section.dart';
import 'package:my_website/widgets/header_section.dart';
import 'package:my_website/widgets/home_section.dart';
import 'package:my_website/widgets/project_card.dart';
import 'package:my_website/widgets/projects_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

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

                  // Experience Section
                  // Container(
                  //   width: double.infinity,
                  //   child: Column(
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               Text(
                  //                 'Experience',
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                   fontSize: 35,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //               SizedBox(height: 8),
                  //               Container(
                  //                 width: 250,
                  //                 height: 3,
                  //                 color: Responsive.kPrimaryColor,
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //       SizedBox(height: 32),
                  //       Container(
                  //         width: MediaQuery.of(context).size.width * .3,
                  //         height: MediaQuery.of(context).size.height * .4,
                  //         decoration: BoxDecoration(
                  //           //color: Colors.white,
                  //           boxShadow: [
                  //             BoxShadow(color: Colors.black.withOpacity(.2)),
                  //           ],
                  //           borderRadius: BorderRadius.circular(16),
                  //         ),
                  //         child: Column(
                  //           children: [
                  //             Image.asset(
                  //               ImagesPath.github,
                  //               width: MediaQuery.of(context).size.width * .3,
                  //               height: MediaQuery.of(context).size.height * .3,
                  //             ),
                  //             Text('Weather App'),
                  //           ],
                  //         ),
                  //       ),
                  //       SizedBox(height: 32),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(height: 32),
                  // Project Section
                  ProjectsSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
