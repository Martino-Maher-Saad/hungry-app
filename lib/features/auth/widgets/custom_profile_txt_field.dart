import 'package:flutter/material.dart';

class CustomProfileTxtField extends StatefulWidget {

  final TextEditingController controller;
  final String label;

  const CustomProfileTxtField({super.key, required this.controller, required this.label});

  @override
  State<CustomProfileTxtField> createState() => _CustomProfileTxtFieldState();
}

class _CustomProfileTxtFieldState extends State<CustomProfileTxtField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      cursorHeight: 20,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        label: Text(widget.label),
        labelStyle: TextStyle(color: Colors.white),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white, width: 3),
        ),
      ),
    );
  }
}
