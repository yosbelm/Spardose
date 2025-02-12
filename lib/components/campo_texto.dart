import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  final bool obscuretext;
  const CampoTexto({
    super.key,
    required this.controller,
    required this.hintext,
    required this.obscuretext,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscuretext,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        hintText: hintext,
        hintStyle: TextStyle(color: Colors.grey[400]),
      ),
    );
  }
}
