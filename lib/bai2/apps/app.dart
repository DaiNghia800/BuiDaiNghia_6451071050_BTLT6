import 'package:flutter/material.dart';
import '../views/home_screen.dart';
import '../views/profile_screen.dart';

class Bai2App extends StatelessWidget {
  const Bai2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bai 2',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
