import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obsecureText,
      });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black)
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500])),
    );
  }
}
