import 'package:flutter/material.dart';
import 'package:my_website/constrants/contants.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
      child: Column(
        crossAxisAlignment:
            Responsive.isDesktop(context)
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
        mainAxisAlignment:
            Responsive.isDesktop(context)
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'About Me',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
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

          SizedBox(height: 32),

          SizedBox(
            width: 800,
            child: Text(
              Responsive.about,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),

          SizedBox(height: 32),
          Text(
            'Education',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32),
          Text(
            'Faculty of Computer Science & Information, Menoufia University',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 3),
          Text(
            ' Bachelor of COMPUTER SCIENCE, CS Major (3.1 GPA, very good)',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 32),
          Text(
            'Digital Egypt Pioneers Initiative (DEPI) - Intensive Training Program',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 3),
          Text(
            ' Software Development - Cross Platform Mobile App Developer',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
