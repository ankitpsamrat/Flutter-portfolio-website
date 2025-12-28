import 'package:flutter/material.dart';
import 'menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              NavItem(
                title: 'Home',
                tapEvent: () {},
              ),
              const SizedBox(height: 10),
              NavItem(
                title: 'Donate',
                tapEvent: () {},
              ),
              const SizedBox(height: 10),
              NavItem(
                title: 'Contact Us',
                tapEvent: () {},
              ),
              const SizedBox(height: 10),
              NavItem(
                title: 'Login',
                tapEvent: () {},
              ),
              const SizedBox(height: 10),
              // NavItem(
              //   title: 'Shop',
              //   tapEvent: () {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
