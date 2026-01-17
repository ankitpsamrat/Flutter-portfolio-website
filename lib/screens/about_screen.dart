import 'package:flutter/material.dart';
import 'package:portfolio_website/components/info_card.dart';
import 'package:portfolio_website/helpers/constants.dart';
import 'package:portfolio_website/helpers/responsive.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: isMobile(context) ? 20 : 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'About Me',
            style: TextStyle(
              fontSize: isDesktop(context) ? 48 : 32,
              fontWeight: FontWeight.w800,
              color: kTextColor,
            ),
          ),
          const SizedBox(height: 30),
          if (isMobile(context))
            const Column(
              children: [
                InfoCard(
                  title: 'Personal Information',
                  description:
                      'I am Ankit Pratap Samrat, a passionate Flutter developer with a strong interest in mobile app development. I love creating beautiful and functional applications that provide great user experiences.',
                  icon: Icons.person,
                ),
                SizedBox(height: 20),
                InfoCard(
                  title: 'Skills & Experience',
                  description:
                      'Proficient in Flutter, Dart, and mobile app development. Experienced in building cross-platform applications with modern UI/UX design. Always eager to learn new technologies and improve my skills.',
                  icon: Icons.code,
                ),
              ],
            )
          else
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: InfoCard(
                    title: 'Personal Information',
                    description:
                        'I am Ankit Pratap Samrat, a passionate Flutter developer with a strong interest in mobile app development. I love creating beautiful and functional applications that provide great user experiences.',
                    icon: Icons.person,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: InfoCard(
                    title: 'Skills & Experience',
                    description:
                        'Proficient in Flutter, Dart, and mobile app development. Experienced in building cross-platform applications with modern UI/UX design. Always eager to learn new technologies and improve my skills.',
                    icon: Icons.code,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
