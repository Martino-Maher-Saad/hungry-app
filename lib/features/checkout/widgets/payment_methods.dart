import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../shared/custom_txt.dart';

class PaymentMethods extends StatelessWidget {

  final String selectedPayment;
  final Function(String) onChanged;

  const PaymentMethods({super.key, required this.selectedPayment, required this.onChanged});



  Widget _buildPaymentWidget({required Color color, required String image, required String title, String? subTitle, required String value}) => GestureDetector(
    onTap: () => onChanged(value),
    child: ListTile(
      tileColor: color,
      leading: Image.asset(image, width: 50,),
      title: CustomTxt(text: title, color: Colors.white, size: 18, weight: FontWeight.w600,),
      subtitle: subTitle != null ? CustomTxt(text: subTitle, color: Colors.white, size: 18, weight: FontWeight.w600,) : null,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      trailing: Radio<String>(
        activeColor: Colors.white,
        value: value,
        groupValue: selectedPayment,
        onChanged: (val) => onChanged(val!),
      ),
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        _buildPaymentWidget(color: Color(0xff3C2F2F), image: "assets/icon/cash.png", title: "Cash On Delivery", value: "Cash",),

        Gap(10),

        _buildPaymentWidget(color: Colors.blue.shade900, image: "assets/icon/visa.webp", title: "Debit Card", value: "Visa", subTitle: "*** **** 2345"),
      ],
    );
  }
}
