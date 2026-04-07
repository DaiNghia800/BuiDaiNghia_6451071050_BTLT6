import 'package:flutter/material.dart';
import '../views/home_screen.dart';

class Bai3App extends StatelessWidget {
  const Bai3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Settings Navigation',
      home: const HomeScreen(),
    );
  }
}