import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_txt.dart';

class SpicySlider extends StatefulWidget {
  const SpicySlider({super.key,});

  @override
  State<SpicySlider> createState() => _SpicySliderState();
}

class _SpicySliderState extends State<SpicySlider> {

  double value = 0.7;

  @override
  Widget build(BuildContext context) {

    return  Row(
      children: [
        Image.asset("assets/details/sandwitch_detail.png", height: 250,),

        Spacer(),

        Column(
          children: [
            CustomTxt(text: "Custom Your Burger\nTo Your Tastes\nUltimate Experience", size: 15, weight: FontWeight.w700,),

            Slider(
              value: value,
              min: 0,
              max: 1,
              activeColor: AppColors.primaryColor,
              onChanged: (v){
                setState(() {
                  value = v;
                });
              },
            ),

            Row(
              children: [
                CustomTxt(text: "🥶",),
                Gap(100),
                CustomTxt(text: "🌶"),
              ],
            ),
          ],
        ),

      ],
    );
  }
}
