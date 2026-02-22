import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/auth/widgets/custom_auth_btn.dart';
import 'package:hungry_app/shared/custom_txt.dart';
import 'package:hungry_app/shared/custom_txt_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
        backgroundColor: AppColors.primaryColor,

        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),

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
                    controller: emailController,
                    hint: "Email Address",
                    isPass: false,
                  ),

                  Gap(20),

                  CustomTxtFormField(
                    controller: passController,
                    hint: "Password",
                    isPass: true,
                  ),

                  Gap(20),

                  CustomAuthBtn(
                    text: "LogIn",
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
