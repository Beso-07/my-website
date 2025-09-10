import 'package:flutter/material.dart';
import 'package:my_website/constrants/contants.dart';
import 'package:my_website/models/header_data.dart';

class HeaderSection extends StatelessWidget {
  final Function(GlobalKey) scrollToSection;
  final Map<String, GlobalKey> keys;

  const HeaderSection({
    super.key,
    required this.scrollToSection,
    required this.keys,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text(
            'Mahmoud Bassem',
            style: TextStyle(
              color: Responsive.kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          const Spacer(),

          // Desktop Menu
          if (Responsive.isDesktop(context))
            Row(
              children: [
                for (var item in headerData)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: TextButton(
                      onPressed: () => scrollToSection(keys[item]!),
                      style: ButtonStyle(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        foregroundColor:
                            WidgetStateProperty.resolveWith<Color>(
                          (states) {
                            if (states.contains(WidgetState.hovered)) {
                              return Responsive.kPrimaryColor;
                            }
                            return Colors.black;
                          },
                        ),
                      ),
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
              ],
            )
          else
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu, size: 24),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
              ),
            ),
        ],
      ),
    );
  }
}

/// mobile drawer
Drawer mobileDrawer(
  BuildContext context,
  Function(GlobalKey) scrollToSection,
  Map<String, GlobalKey> keys,
) {
  return Drawer(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, size: 26),
              ),
            ],
          ),
        ),
        for (var item in headerData)
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context); // close drawer
                scrollToSection(keys[item]!);
              },
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                foregroundColor:
                    WidgetStateProperty.resolveWith<Color>((states) {
                  if (states.contains(WidgetState.hovered)) {
                    return Responsive.kPrimaryColor;
                  }
                  return Colors.black;
                }),
              ),
              child: Text(
                item,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ),
      ],
    ),
  );
}
