import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/product/widgets/spicy_slider.dart';
import 'package:hungry_app/features/product/widgets/topping_card.dart';
import 'package:hungry_app/shared/custom_button.dart';
import 'package:hungry_app/shared/custom_txt.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {

    double value = 0.7;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_rounded),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpicySlider(),

              Gap(40),

              CustomTxt(text: "Toppings", weight: FontWeight.bold, size: 20,),

              Gap(70),

              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ToppingCard(text: "Tomato", imageUrl: "assets/test/tomato.png", onAdd: (){},),
                    ),
                  ),
                ),
              ),

              Gap(40),

              CustomTxt(text: "Side Options", weight: FontWeight.bold, size: 20,),

              Gap(70),

              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                        (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ToppingCard(text: "Tomato", imageUrl: "assets/test/tomato.png", onAdd: (){},),
                    ),
                  ),
                ),
              ),
              
              Gap(40),
              
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTxt(text: "Total", size: 30,),
                      CustomTxt(text: "18.9\$", size: 40,)
                    ],
                  ),

                  Spacer(),

                  CustomButton(
                    text: "Add To Cart",
                    onTap: (){},
                  ),
                ],
              ),

              Gap(40),

            ],
          ),
        ),
      ),
    );
  }
}
