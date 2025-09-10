import 'package:flutter/material.dart';
import 'package:my_website/constrants/contants.dart';

Widget buildContactForm() {
  return Column(
    children: [
      TextField(decoration: inputDecoration("Your Name")),
      const SizedBox(height: 16),
      TextField(decoration: inputDecoration("Your Email")),
      const SizedBox(height: 16),
      TextField(decoration: inputDecoration("Subject")),
      const SizedBox(height: 16),
      TextField(decoration: inputDecoration("Your Message"), maxLines: 6),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: const Text(
          "Send Message",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    ],
  );
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
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Responsive.kPrimaryColor),
    ),
  );
}
