import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../shared/custom_txt.dart';

class OrderDetails extends StatelessWidget {

  final String order, tax, fees, total;

  const OrderDetails({super.key, required this.order, required this.tax, required this.fees, required this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTxt(text: "Order Summary", size: 25, weight: FontWeight.w500,),

        Gap(10),

        checkOutWidget(title: "Order", price: "$order\$", isSmall: false, isBold: false),

        Gap(10),

        checkOutWidget(title: "Taxes", price: "$tax\$", isSmall: false, isBold: false),

        Gap(10),

        checkOutWidget(title: "Delivery Fess", price: "$fees\$", isSmall: false, isBold: false),

        Gap(10),

        Divider(),

        Gap(10),

        checkOutWidget(title: "Total", price: "$total\$", isSmall: false, isBold: true),

        Gap(10),

        checkOutWidget(title: "Estimated Delivery Time", price: "15 - 30 mins", isSmall: true, isBold: true),
      ],
    );
  }
}




Widget checkOutWidget({required String title, required String price, required bool isBold, required bool isSmall}) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomTxt(
        text: title,
        size: isSmall ? 17 : 20,
        weight: isBold ? FontWeight.bold : FontWeight.w500,
        color: isBold ? Colors.black : Colors.grey.shade500,
      ),

      CustomTxt(
        text: price.toString(),
        size: isSmall ? 17 : 20,
        weight: isBold ? FontWeight.bold : FontWeight.w500,
        color: isBold ? Colors.black : Colors.grey.shade500,
      ),
    ],
  ),
);