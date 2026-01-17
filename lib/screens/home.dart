import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/about_screen.dart';
import 'package:portfolio_website/components/footer.dart';
import 'package:portfolio_website/components/header.dart';
import 'package:portfolio_website/components/side_menu.dart';
import 'package:portfolio_website/screens/home_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _currentScreen = 'home';

  void _changeScreen(String screen) {
    setState(() {
      _currentScreen = screen;
    });

    final scaffoldState = Scaffold.maybeOf(context);
    if (scaffoldState?.isEndDrawerOpen ?? false) {
      Navigator.of(context).pop();
    }
  }

  Widget _getCurrentScreen() {
    switch (_currentScreen) {
      case 'about':
        return const AboutScreen();
      case 'home':
      default:
        return const HomeView();
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: SideMenu(onScreenChange: _changeScreen),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(minHeight: size.height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Header(onScreenChange: _changeScreen),
                _getCurrentScreen(),
                const Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
