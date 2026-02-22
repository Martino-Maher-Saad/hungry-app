import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_button.dart';
import '../../../shared/custom_txt.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 200),
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15, top: 40),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(Icons.check, size: 70, color: Colors.white,),
                ),
              ),

              Gap(50),

              CustomTxt(text: "Success", size: 40, weight: FontWeight.bold, color: Colors.black,),

              Spacer(),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CustomButton(text: "Close", onTap: () => Navigator.pop(context),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
