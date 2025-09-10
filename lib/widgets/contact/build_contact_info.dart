import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_website/widgets/contact/contact_item.dart';

Widget buildContactInfo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      ContactItem(
        icon: Icons.phone,
        text: "+201112764146",
        url: "tel:+201112764146",
      ),
      SizedBox(height: 16),
      ContactItem(
        icon: Icons.email,
        text: "mahmoudbassem34@gmail.com",
        url: "mailto:mahmoudbassem34@gmail.com",
      ),
      SizedBox(height: 16),
      ContactItem(
        icon: Icons.language,
        text: "mahmoud-bassem.site",
        url: "https://beso-07.github.io/my-website/",
      ),
      SizedBox(height: 16),
      ContactItem(
        icon: FontAwesomeIcons.github,
        text: "github.com/Beso-07",
        url: "https://github.com/Beso-07",
      ),
    ],
  );
}
