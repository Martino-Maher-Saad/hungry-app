import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/features/cart/widgets/cart_item.dart';
import 'package:hungry_app/shared/custom_button.dart';
import 'package:hungry_app/shared/custom_txt.dart';

import '../../checkout/view/check_out_view.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          children: [
            Gap(20),

            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index){
                  return CartItem(
                    text: "HumBurger",
                    desc: "Veggie Burger",
                    imageUrl: "assets/test/test.png",
                  );
                },
              ),
            ),

            Gap(15),

            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTxt(text: "Total", size: 20, weight: FontWeight.bold,),
                    CustomTxt(text: "18.9\$", size: 30,)
                  ],
                ),

                Spacer(),

                CustomButton(
                  text: "Check Out",
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOutView())),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
