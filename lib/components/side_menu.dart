import 'package:flutter/material.dart';
import 'package:portfolio_website/components/menu_item.dart';

class SideMenu extends StatelessWidget {
  final Function(String) onScreenChange;

  const SideMenu({
    super.key,
    required this.onScreenChange,
  });

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
                tapEvent: () => onScreenChange('home'),
              ),
              const SizedBox(height: 10),
              NavItem(
                title: 'About',
                tapEvent: () => onScreenChange('about'),
              ),
              const SizedBox(height: 10),
              NavItem(
                title: 'Contact Us',
                tapEvent: () => onScreenChange('contact'),
              ),
              // const SizedBox(height: 10),
              // NavItem(
              //   title: 'Login',
              //   tapEvent: () {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
