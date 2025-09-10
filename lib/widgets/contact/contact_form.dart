import 'package:flutter/material.dart';
import 'package:my_website/constrants/contants.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    subjectController.dispose();
    messageController.dispose();
    super.dispose();
  }

  void sendEmail() async {
    String username = 'mahmoudbassem34@gmail.com';
    String password = 'lsyl fygw yjxs rlte';

    final smtpServer = gmail(username, password);

    final message =
        Message()
          ..from = Address(username, 'Your Website')
          ..recipients.add('mahmoudbassem34@gmail.com')
          ..subject = 'New Contact Message'
          ..text =
              'Name: ${nameController.text}\n'
              'Email: ${emailController.text}\n'
              'Subject: ${subjectController.text}\n'
              'Message: ${messageController.text}';

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
      nameController.clear();
      emailController.clear();
      subjectController.clear();
      messageController.clear();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Message sent successfully!')),
      );
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Failed to send message.')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: nameController,
          decoration: inputDecoration("Your Name"),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: emailController,
          decoration: inputDecoration("Your Email"),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: subjectController,
          decoration: inputDecoration("Subject"),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: messageController,
          decoration: inputDecoration("Your Message"),
          maxLines: 6,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: sendEmail,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            "Send Message",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

InputDecoration inputDecoration(String hint) {
  return InputDecoration(
    hintText: hint,
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Responsive.kPrimaryColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Responsive.kPrimaryColor),
    ),
  );
}
