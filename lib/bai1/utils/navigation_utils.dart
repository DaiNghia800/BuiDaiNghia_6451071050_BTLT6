import 'package:flutter/material.dart';

class NavigationUtils {
  static void goToAbout(BuildContext context) {
    Navigator.pushNamed(context, '/about');
  }

  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}
