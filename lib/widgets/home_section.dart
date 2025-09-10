import 'package:flutter/material.dart';
import 'package:my_website/constrants/contants.dart';
import 'package:my_website/constrants/images_path.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
    required this.contactKey,
    required this.projectsKey,
  });
  final GlobalKey contactKey;
  final GlobalKey projectsKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Responsive.kBackgoundColor,
      height: MediaQuery.of(context).size.height - 65,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(height: 180),
            Text(
              'Mahmoud Bassem Al-Basyouni',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Mobile App Developer',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 32),
            SizedBox(
              width: 600,
              child: Text(
                Responsive.usp,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 32),

            // 2 buttons desktop
            if (Responsive.isDesktop(context))
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Scrollable.ensureVisible(
                        projectsKey.currentContext!,
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                    },
                    style: ButtonStyle(
                      fixedSize: WidgetStateProperty.all(const Size(200, 50)),

                      backgroundColor: WidgetStateProperty.all(
                        Responsive.kPrimaryColor,
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      padding: WidgetStateProperty.all(
                        const EdgeInsets.all(12),
                      ),
                    ),
                    child: const Text(
                      'View My Work',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(width: 32),
                  TextButton(
                    onPressed: () {
                      Scrollable.ensureVisible(
                        contactKey.currentContext!,
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                    },
                    style: ButtonStyle(
                      fixedSize: WidgetStateProperty.all(const Size(200, 50)),
                      backgroundColor: WidgetStateProperty.resolveWith<Color>((
                        states,
                      ) {
                        if (states.contains(WidgetState.hovered)) {
                          return Responsive.kPrimaryColor;
                        }
                        return Colors.transparent;
                      }),
                      foregroundColor: WidgetStateProperty.resolveWith<Color>((
                        states,
                      ) {
                        if (states.contains(WidgetState.hovered)) {
                          return Colors.white;
                        }
                        return Responsive.kPrimaryColor;
                      }),
                      side: WidgetStateProperty.all(
                        BorderSide(color: Responsive.kPrimaryColor, width: 2),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      padding: WidgetStateProperty.all(
                        const EdgeInsets.all(12),
                      ),
                    ),
                    child: const Text(
                      'Contact Me',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )
            else
              // 2 buttons mobile
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      fixedSize: WidgetStateProperty.all(const Size(200, 50)),
                      backgroundColor: WidgetStateProperty.all(
                        Responsive.kPrimaryColor,
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      padding: WidgetStateProperty.all(
                        const EdgeInsets.all(12),
                      ),
                    ),
                    child: const Text(
                      'View My Work',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(height: 32),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      fixedSize: WidgetStateProperty.all(const Size(200, 50)),
                      backgroundColor: WidgetStateProperty.resolveWith<Color>((
                        states,
                      ) {
                        if (states.contains(WidgetState.hovered)) {
                          return Responsive.kPrimaryColor;
                        }
                        return Colors.transparent;
                      }),
                      foregroundColor: WidgetStateProperty.resolveWith<Color>((
                        states,
                      ) {
                        if (states.contains(WidgetState.hovered)) {
                          return Colors.white;
                        }
                        return Responsive.kPrimaryColor;
                      }),
                      side: WidgetStateProperty.all(
                        BorderSide(color: Responsive.kPrimaryColor, width: 2),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      padding: WidgetStateProperty.all(
                        const EdgeInsets.all(12),
                      ),
                    ),
                    child: const Text(
                      'Contact Me',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            SizedBox(height: 32),

            // icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // GitHub
                InkWell(
                  onTap: () => _launchUrl("https://github.com/Beso-07"),
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Image.asset(
                    ImagesPath.github,
                    width: 30,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 16),

                // Website
                InkWell(
                  onTap: () => _launchUrl("https://beso-07.github.io/my-website/"),
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Image.asset(
                    ImagesPath.web,
                    width: 30,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 16),

                // Email
                InkWell(
                  onTap: () => _launchUrl("mailto:mahmoudbassem34@gmail.com"),
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Image.asset(
                    ImagesPath.mail,
                    width: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
