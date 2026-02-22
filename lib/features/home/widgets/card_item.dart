import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';

import '../../../shared/custom_txt.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.image, required this.text, required this.desc, required this.rate});

  final String image, text, desc, rate;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,

      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, width: 180,),
            Gap(10),
            CustomTxt(text: text, weight: FontWeight.bold,),
            CustomTxt(text: desc),
            Row(
              children: [
                CustomTxt(text: "⭐ $rate"),
                Spacer(),
                Icon(CupertinoIcons.heart_fill, color: AppColors.primaryColor,),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
