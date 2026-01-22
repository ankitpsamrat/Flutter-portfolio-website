import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/helpers/responsive.dart';
import 'package:portfolio_website/components/menu_item.dart';

class Header extends StatelessWidget {
  final Function(String) onScreenChange;

  const Header({
    super.key,
    required this.onScreenChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/logo.png',
            width: 50,
          ),
          const SizedBox(width: 10),
          Text(
            "SAMRAT",
            style: GoogleFonts.reenieBeanie(fontSize: 18),
          ),
          const Spacer(),
          if (!isMobile(context))
            Row(
              children: [
                NavItem(
                  title: 'Home',
                  tapEvent: () => onScreenChange('home'),
                ),
                NavItem(
                  title: 'About',
                  tapEvent: () => onScreenChange('about'),
                ),
                NavItem(
                  title: 'Contact',
                  tapEvent: () => onScreenChange('contact'),
                ),
                // NavItem(
                //   title: 'Login',
                //   tapEvent: () {},
                // ),
              ],
            ),
          if (isMobile(context))
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
        ],
      ),
    );
  }
}
