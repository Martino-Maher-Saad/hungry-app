import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';



class CustomTxtFormField extends StatefulWidget {

  final String hint;
  final bool isPass;
  final TextEditingController controller;

  const CustomTxtFormField({
    super.key,
    required this.hint,
    required this.isPass,
    required this.controller,
  });

  @override
  State<CustomTxtFormField> createState() => _CustomTxtFormFieldState();
}

class _CustomTxtFormFieldState extends State<CustomTxtFormField> {

  late bool _obscureText;

  @override
  void initState() {
    _obscureText = widget.isPass;
    super.initState();
  }

  void _togglePass(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }


  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller: widget.controller,
      cursorColor: AppColors.primaryColor,
      cursorHeight: 20,
      obscureText: _obscureText,

      validator: (value){
        if(value == null || value.isEmpty){
          return "The ${widget.hint} is required";
        }
        return null;
      },

      decoration: InputDecoration(
        hintText: widget.hint,
        fillColor: Colors.white,
        filled: true,

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),

        suffixIcon: widget.isPass ? GestureDetector(
          onTap: _togglePass,
          child: Icon(CupertinoIcons.eye),
        ) : null,
      ),
    );

  }
}
