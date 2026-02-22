import 'package:flutter/material.dart';

import '../../../shared/custom_txt.dart';

class ToppingCard extends StatelessWidget {

  final String imageUrl;
  final String text;
  final Function()? onAdd;

  const ToppingCard({super.key, required this.imageUrl, required this.text, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 120,
          width: 130,
          decoration: BoxDecoration(
            color: Color(0xff132440),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 7, left: 7),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomTxt(text: text, color: Colors.white, weight: FontWeight.bold, size: 15,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: onAdd,
                    child: Icon(Icons.add, color: Colors.white, size: 27,),
                  ),
                ),
              ],
            ),
          ),
        ),

        Positioned(
          top: -60,
          left: 0,
          right: 0,
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(0, -4),
                    blurRadius: 4
                ),
              ],
            ),
            child: Center(child: Image.asset(imageUrl, height: 90,),),
          ),
        ),
      ],
    );
  }
}
