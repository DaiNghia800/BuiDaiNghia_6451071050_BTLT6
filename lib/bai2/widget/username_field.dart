import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const UsernameField({super.key, required this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Username',
        border: OutlineInputBorder(),
      ),
      validator: validator,
    );
  }
}
