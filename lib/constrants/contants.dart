import 'package:flutter/material.dart';

//const kSecondaryTextColor = Color(0xff);

class Responsive {
  static const kPrimaryColor = Color(0xff2563EB);
  static const kBackgoundColor = Color(0xff4A4B4B);
  static const mobilewidth = 568;
  static const tabletwidth = 768;
  static const usp =
      'I create fast, cross-platform Flutter apps with clean design, smooth performance, and full support for future updates.';
  static const about = "I'm a Mobile App Developer with over 1 year of experience specializing in Flutter. I’ve been building cross-platform applications with Dart and have a solid understanding of design patterns and UI principles. I enjoy turning creative ideas into functional, user-friendly apps and always strive to write clean and efficient code. I’m passionate about learning new technologies, improving performance, and contributing to impactful projects while continuing to grow as a developer.";
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobilewidth;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= tabletwidth;
}
