import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/checkout/widgets/order_details.dart';
import 'package:hungry_app/features/checkout/widgets/payment_methods.dart';
import 'package:hungry_app/features/checkout/widgets/success_dialog.dart';
import 'package:hungry_app/shared/custom_txt.dart';

import '../../../shared/custom_button.dart';

class CheckOutView extends StatefulWidget {

  const CheckOutView({super.key});

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {

  String selectedPayment = "Cash";
  bool checkValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(onTap: () => Navigator.pop(context), child: Icon(CupertinoIcons.back, color: Colors.black),),
      ),

      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            OrderDetails(order: "18.8", tax: "3.5", fees: "2.4", total: "22.5",),

            Gap(25),

            Divider(),

            Gap(25),

            CustomTxt(text: "Payment Methods", size: 25, weight: FontWeight.bold,),

            Gap(10),

            PaymentMethods(
              selectedPayment: selectedPayment,
              onChanged: (val) => setState(() => selectedPayment = val),
            ),

            Gap(10),
            
            Row(
              children: [
                Checkbox(
                  activeColor: Color(0xffEF2A39),
                  value: checkValue,
                  onChanged: (val) => setState(() => checkValue = val!),
                ),
                CustomTxt(text: "Save Card Details For Future Payments", size: 15,),
              ],
            ),

            Spacer(),

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
                  text: "Pay Now",
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (context){
                        return SuccessDialog();
                      },
                    );
                  },
                ),
              ],
            ),

            Gap(15),

          ],
        ),
      ),
    );
  }
}