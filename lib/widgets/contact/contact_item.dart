import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_website/widgets/contact/contact_info_row.dart';

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final String url;

  const ContactItem({
    super.key,
    required this.icon,
    required this.text,
    required this.url,
  });

  Future<void> _launch() async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launch,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: ContactInfoRow(icon: icon, text: text),
    );
  }
}
