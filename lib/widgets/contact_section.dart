import 'package:flutter/material.dart';
import 'package:my_website/widgets/contact/build_contact_form.dart';
import 'package:my_website/widgets/contact/build_contact_info.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 800;

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            children: [
              /// Title
              Column(
                children: [
                  Text(
                    "Contact Me",
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(width: 150, height: 3, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 32),

              /// Layout (Info + Form)
              isMobile
                  ? Column(
                    children: [
                      buildContactInfo(),
                      const SizedBox(height: 32),
                      buildContactForm(),
                    ],
                  )
                  : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: 1, child: buildContactInfo()),
                      const SizedBox(width: 40),
                      Expanded(flex: 2, child: buildContactForm()),
                    ],
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
