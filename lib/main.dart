import 'package:flutter/material.dart';
import 'package:my_website/pages/home_page.dart';

void main() {
  runApp(MyWebsite());
}

class MyWebsite extends StatelessWidget {
  const MyWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my website',
      home: HomePage(),
    );
  }
}
