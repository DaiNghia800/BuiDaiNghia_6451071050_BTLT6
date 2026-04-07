import 'package:flutter/material.dart';
import '../views/home_screen.dart';
import '../views/about_screen.dart';

class Bai1App extends StatelessWidget {
  const Bai1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bai 1',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}
