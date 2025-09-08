import 'package:flutter/material.dart';
import 'package:my_website/constrants/contants.dart';
import 'package:my_website/models/header_data.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

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

          // Desktop
          if (Responsive.isDesktop(context))
            Row(
              children: [
                for (int i = 0; i < headerData.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        overlayColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                        foregroundColor: WidgetStateProperty.resolveWith<Color>(
                          (states) {
                            if (states.contains(WidgetState.hovered)) {
                              return Responsive.kPrimaryColor;
                            }
                            return Colors.black;
                          },
                        ),
                      ),
                      child: Text(
                        headerData[i],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
              ],
            )
          // Mobile / Tablet
          else
            Builder(
              builder:
                  (context) => IconButton(
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
Drawer mobileDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.close, size: 26),
              ),
            ],
          ),
        ),
        for (int i = 0; i < headerData.length; i++)
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                foregroundColor: WidgetStateProperty.resolveWith<Color>((
                  states,
                ) {
                  if (states.contains(WidgetState.hovered)) {
                    return Responsive.kPrimaryColor;
                  }
                  return Colors.black;
                }),
              ),
              child: Text(
                headerData[i],
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        // ListTile(
        //   leading: Icon(headerDataIcons[i]),
        //   title: Text(
        //     headerData[i],
        //     style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        //   ),
        //   onTap: () {},
        // ),
      ],
    ),
  );
}
