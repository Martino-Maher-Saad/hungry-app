import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/shared/custom_txt.dart';

import '../widgets/custom_profile_txt_field.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  void initState() {
    _nameController.text = "Martino Maher";
    _emailController.text = "martinomaher@gmail.com";
    _addressController.text = "Giza";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,),
              child: SvgPicture.asset("assets/icon/settings.svg", width: 30, color: Colors.white,),
            ),
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [

                Center(
                  child: Container(
                    height: 220,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 4, color: Colors.white),
                    ),
                    child: Image.asset("assets/profile/profile.png", fit: BoxFit.cover,),
                    ),
                  ),

                Gap(30),

                CustomProfileTxtField(controller: _nameController, label: "Name",),

                Gap(25),

                CustomProfileTxtField(controller: _emailController, label: "Email",),

                Gap(25),

                CustomProfileTxtField(controller: _addressController, label: "Address",),

                Divider(),

                Gap(25),

              ],
            ),
          ),
        ),


        bottomSheet: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      CustomTxt(text: "Edit Profile", size: 20, weight: FontWeight.w400, color: Colors.white,),
                      Gap(8),
                      Icon(Icons.edit, color: Colors.white,),
                    ],
                  ),
                ),


                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.primaryColor, width: 2),
                  ),
                  child: Row(
                    children: [
                      CustomTxt(text: "Log Out", size: 20, weight: FontWeight.w400, color: AppColors.primaryColor,),
                      Gap(8),
                      Icon(Icons.login, color: AppColors.primaryColor,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
