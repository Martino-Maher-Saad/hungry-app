import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_txt.dart';

class FoodCategories extends StatefulWidget {

  const FoodCategories({super.key, required this.categories, required this.selectedIndex});

  final List<String> categories;
  final int selectedIndex;

  @override
  State<FoodCategories> createState() => _FoodCategoriesState();
}



class _FoodCategoriesState extends State<FoodCategories> {

  late int selectedIndex;

  @override
  void initState() {
    selectedIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          widget.categories.length, (index){
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },

              child: Container(
                decoration: BoxDecoration(color: selectedIndex == index ? AppColors.primaryColor : Colors.grey.shade200, borderRadius: BorderRadius.circular(20),),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: CustomTxt(text: widget.categories[index], size: 15, color: selectedIndex == index ? Colors.grey.shade200 : AppColors.primaryColor, weight: FontWeight.w700,),
              ),
            ),
          );
        },
        ),
      ),
    );
  }
}
