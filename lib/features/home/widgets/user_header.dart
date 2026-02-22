import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_txt.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/logo/logo.svg', color: AppColors.primaryColor, height: 40,),
            Gap(4),
            CustomTxt(text: "Hello, Martino", color: Colors.grey.shade700, weight: FontWeight.w500, size: 15,),
          ],
        ),
        Spacer(),
        CircleAvatar(radius: 35, backgroundColor: AppColors.primaryColor, backgroundImage: AssetImage("assets/profile/profile.png",),),
      ],
    );
  }
}
