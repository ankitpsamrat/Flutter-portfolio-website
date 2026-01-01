import 'package:flutter/material.dart';
import 'package:portfolio_website/helpers/constants.dart';

class NavItem extends StatelessWidget {
  final String title;
  final GestureTapCallback tapEvent;

  const NavItem({
    super.key,
    required this.title,
    required this.tapEvent,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style: const TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
