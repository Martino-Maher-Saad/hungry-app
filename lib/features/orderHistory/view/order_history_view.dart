import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../shared/custom_button.dart';
import '../../../shared/custom_txt.dart';
import '../../cart/widgets/cart_item.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        children: [
          Gap(20),

          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index){
                return Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/test/test.png", width: 100,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomTxt(text: "HumBurger", weight: FontWeight.bold,),
                                CustomTxt(text: "Qty : X3"),
                                CustomTxt(text: "Price : 20\$"),
                              ],
                            ),
                          ],
                        ),

                        Gap(15),

                        CustomButton(text: "Re Order", width: double.infinity,),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
