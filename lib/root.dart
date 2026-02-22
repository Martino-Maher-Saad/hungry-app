import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/auth/view/profile_view.dart';
import 'package:hungry_app/features/cart/view/cart_view.dart';
import 'package:hungry_app/features/home/view/home_view.dart';
import 'package:hungry_app/features/orderHistory/view/order_history_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {

  late PageController controller;
  List<Widget> screens = [
    HomeView(),
    CartView(),
    OrderHistoryView(),
    ProfileView()
  ];
  int currentScreenIndex = 0;

  @override
  void initState() {
    controller = PageController(initialPage: currentScreenIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: screens,
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),

        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),

        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.shade900,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentScreenIndex,


            onTap: (index){
              setState(() {
                currentScreenIndex = index;
              });
              controller.jumpToPage(currentScreenIndex);
            },

            items: [
              BottomNavigationBarItem(label: "Home" ,icon: Icon(CupertinoIcons.home),),
              BottomNavigationBarItem(label: "Cart" ,icon: Icon(CupertinoIcons.cart_fill),),
              BottomNavigationBarItem(label: "Order History" ,icon: Icon(CupertinoIcons.list_bullet),),
              BottomNavigationBarItem(label: "Profile" ,icon: Icon(CupertinoIcons.person),),
            ],
          ),
        ),
      ),
    );
  }
}
