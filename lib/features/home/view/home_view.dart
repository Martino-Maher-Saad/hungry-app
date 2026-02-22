import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/features/home/widgets/card_item.dart';
import 'package:hungry_app/features/home/widgets/food_categories.dart';
import 'package:hungry_app/features/product/view/product_details_view.dart';
import 'package:hungry_app/shared/custom_txt.dart';

import '../../../core/constants/app_colors.dart';
import '../widgets/search_field.dart';
import '../widgets/user_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  List<String> categories = [
    "All",
    "Combos",
    "Sliders",
    "Classic",
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [

            SliverAppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 175,
              backgroundColor: Colors.white,
              elevation: 0,
              scrolledUnderElevation: 0,
              pinned: true,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 40, right: 15, left: 15),
                child: Column(
                  children: [
                    Gap(20),
                    UserHeader(),
                    Gap(10),
                    SearchField(),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    FoodCategories(categories: categories, selectedIndex: selectedIndex),

                    Gap(25),
                  ],
                ),
              ),
            ),

            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(childCount: 6, (context, index) => Material(
                  elevation: 5,
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => ProductDetailsView()),
                      );
                    },
                    child: CardItem(
                      image: "assets/test/test.png",
                      text: "Chess Burger",
                      desc: "Combo Burger",
                      rate: "4.9",),
                  ),
                ),),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.71,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                ),
              ),
            ),

          ],

        ),
      ),
    );
  }
}
