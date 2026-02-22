import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/auth/widgets/custom_auth_btn.dart';

import '../../../shared/custom_txt.dart';
import '../../../shared/custom_txt_form_field.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    final TextEditingController confirmPassController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
        backgroundColor: AppColors.primaryColor,

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Form(
              key: formKey,

              child: Column(
                children: [
                  Gap(100),

                  SvgPicture.asset('assets/logo/logo.svg'),

                  Gap(10),

                  CustomTxt(
                    text: 'Welcome Discover The Original Fast Food',
                    color: Colors.white,
                    size: 15,
                    weight: FontWeight.w400,
                  ),

                  Gap(40),

                  CustomTxtFormField(
                    hint: "Full Name",
                    isPass: false,
                    controller: nameController,
                  ),

                  Gap(20),

                  CustomTxtFormField(
                    hint: "Email Address",
                    isPass: false,
                    controller: emailController,
                  ),

                  Gap(20),

                  CustomTxtFormField(
                    hint: "Password",
                    isPass: true,
                    controller: passController,
                  ),

                  Gap(20),

                  CustomTxtFormField(
                    hint: "Confirm Password",
                    isPass: true,
                    controller: confirmPassController,
                  ),

                  Gap(30),

                  CustomAuthBtn(
                    text: 'Sign Up',
                    onTap: (){
                      if(formKey.currentState!.validate()){}
                    },
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
