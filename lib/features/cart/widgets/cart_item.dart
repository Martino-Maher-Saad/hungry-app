import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_button.dart';
import '../../../shared/custom_txt.dart';

class CartItem extends StatefulWidget {

  final String text, desc, imageUrl;
  final Function()? onRemove;

  const CartItem({super.key, required this.text, required this.desc, required this.imageUrl, this.onRemove,});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  int num = 1;

  @override
  Widget build(BuildContext context) {

    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(widget.imageUrl, width: 100,),
                CustomTxt(text: widget.text, weight: FontWeight.bold,),
                CustomTxt(text: widget.desc),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          if(num>1){
                            num--;
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.primaryColor,
                        child: Icon(CupertinoIcons.minus, color: Colors.white,),
                      ),
                    ),

                    Gap(20),

                    CustomTxt(text: "$num", size: 25, weight: FontWeight.w500,),

                    Gap(20),

                    GestureDetector(
                      onTap: (){
                        setState(() {
                          num++;
                        });
                      },
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.primaryColor,
                        child: Icon(CupertinoIcons.add, color: Colors.white,),
                      ),
                    ),
                  ],
                ),

                Gap(20),

                GestureDetector(
                  onTap: widget.onRemove,
                  child: CustomButton(text: "Remove"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
