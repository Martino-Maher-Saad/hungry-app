import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';
import 'custom_txt.dart';

class CustomButton extends StatelessWidget {

  final Function()? onTap;
  final String text;
  final double? width;

  const CustomButton({super.key, this.onTap, required this.text, this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Center(child: CustomTxt(text: text, color: Colors.white, weight: FontWeight.bold, size: 20,)),
        ),
      ),
    );
  }
}
