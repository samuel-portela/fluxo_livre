import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool obscure;

  const CustomTextField({
    super.key,
    required this.icon,
    required this.hint,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(icon, color: Colors.white),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.pink),
        ),
      ),
      style: const TextStyle(color: Colors.white),
      obscureText: obscure,
    );
  }
}
