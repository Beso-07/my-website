import 'package:flutter/material.dart';
import 'package:my_website/constrants/contants.dart';
import 'package:my_website/models/project_model.dart';

import 'package:url_launcher/url_launcher_string.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final ProjectModel project;

  launchURLBrowser(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: 380,
      height: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            offset: Offset(0, 8),
            blurRadius: 20,
            spreadRadius: 1,
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // image
          Image.asset(
            project.image,
            width: 380,
            height: 150,
            fit: BoxFit.cover,
          ),
          // title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            child: Text(
              project.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                //color: CustomColor.whitePrimary,
              ),
            ),
          ),
          // subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subTitle,
              style: const TextStyle(
                fontSize: 12,
                //color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          //footer
          Container(
            //color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),

            child: Row(
              children: [
                Text(
                  'Avilable on : ',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Responsive.kPrimaryColor,
                  ),
                ),
                const Spacer(),

                // if (project.androidLink != null)
                //   Padding(
                //     padding: const EdgeInsets.only(right: 5),
                //     child: InkWell(
                //       onTap: () => openLink(project.androidLink!),
                //       child: Image.asset(
                //         'assets/images/android.png',
                //         width: 20,
                //         height: 20,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),

                // if (project.iosLink != null)
                //   Padding(
                //     padding: const EdgeInsets.only(right: 5),
                //     child: InkWell(
                //       onTap: () => openLink(project.iosLink!),
                //       child: Image.asset(
                //         'assets/images/ios.png',
                //         width: 20,
                //         height: 20,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),

                // if (project.webLink != null)
                //   Padding(
                //     padding: const EdgeInsets.only(right: 5),
                //     child: InkWell(
                //       onTap: () => openLink(project.webLink!),
                //       child: Image.asset(
                //         'assets/images/web.png',
                //         width: 20,
                //         height: 20,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                if (project.githubLink != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: InkWell(
                      onTap: () => launchURLBrowser(project.githubLink!),
                      child: Image.asset(
                        'assets/images/github.png',
                        width: 20,
                        height: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
