import 'package:flutter/material.dart';
import 'package:portfolio_website/components/footer.dart';
import 'package:portfolio_website/components/header.dart';
import 'package:portfolio_website/components/side_menu.dart';
import 'package:portfolio_website/screens/home_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: const SideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(minHeight: size.height),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Header(), HomeView(), Footer()],
            ),
          ),
        ),
      ),
    );
  }
}
