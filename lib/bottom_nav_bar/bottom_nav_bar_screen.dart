import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poultry_pro/bottom_nav_bar/home.dart';
import 'package:poultry_pro/bottom_nav_bar/my_orders.dart';
import 'package:poultry_pro/bottom_nav_bar/notification.dart';
import 'package:poultry_pro/bottom_nav_bar/place_order.dart';
import 'package:poultry_pro/bottom_nav_bar/profile.dart';
import 'package:poultry_pro/components/nav_bar_item.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  static GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int selectedIndex = 0;
  final screens = [
    HomeScreen(scaffoldKey: _scaffoldKey),
    PlaceOrderScreen(),
    MyOrdersScreen(),
    ProfileScreen(),
    NotificationScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4FAF2),

      drawer: Drawer(
        width: 304.w,
      ),
      key: _scaffoldKey,
      body: screens[selectedIndex],
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   toolbarHeight: 250.h,
      //   flexibleSpace: Container(
      //     height: 250.h,
      //     decoration: BoxDecoration(
      //         gradient: LinearGradient(
      //       colors: [
      //         Colors.white, // #FFFFFF (100%)
      //         Color(0x9E9EF0B7), // #9EF0B7 with 95% opacity
      //       ],
      //       begin: Alignment.topCenter, // Start from top
      //       end: Alignment.bottomCenter, // End at bottom
      //       stops: [0.3484, 1.0],
      //     )),
      //     child: Row(
      //       children: [
      //         DrawerButton(
      //           onPressed: () {
      //             _scaffoldKey.currentState?.openDrawer();
      //           },
      //         ),
      //         SizedBox(
      //           width: 125.w,
      //         ),
      //         Image(
      //             height: 75.h,
      //             width: 48.w,
      //             image: AssetImage('assets/images/henrylogo.png')),
      //         SizedBox(
      //           width: 90.w,
      //         ),
      //         Switch(
      //             activeTrackColor: Color(0xff57B674),
      //             value: true,
      //             onChanged: (value) {}),
      //         SizedBox(
      //           width: 10.w,
      //         )
      //       ],
      //     ),
      //   ),

      // ),
      // backgroundColor: Color(0xffF3FAF2),

      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20.h, left: 16.w, right: 16.w),
        height: 72.h,
        width: 370.w,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30.r)),
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarItem(
                  iconcolor: selectedIndex == 0
                      ? Color(0xff57B674)
                      : Color(0xff828282),
                  index: 0,
                  image: 'assets/icons/home.svg',
                  title: 'Home',
                  onpress: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  }),
              NavBarItem(
                  iconcolor: selectedIndex == 1
                      ? Color(0xff57B674)
                      : Color(0xff828282),
                  index: 1,
                  image: 'assets/icons/order.svg',
                  title: 'Place Order',
                  onpress: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  }),
              NavBarItem(
                  iconcolor: selectedIndex == 2
                      ? Color(0xff57B674)
                      : Color(0xff828282),
                  index: 2,
                  image: 'assets/icons/myorders.svg',
                  title: 'My Orders',
                  onpress: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  }),
              NavBarItem(
                  iconcolor: selectedIndex == 3
                      ? Color(0xff57B674)
                      : Color(0xff828282),
                  index: 3,
                  image: 'assets/icons/profile.svg',
                  title: 'Profile',
                  onpress: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                  }),
              NavBarItem(
                  iconcolor: selectedIndex == 4
                      ? Color(0xff57B674)
                      : Color(0xff828282),
                  index: 4,
                  image: 'assets/icons/notification.svg',
                  title: 'Notification',
                  onpress: () {
                    setState(() {
                      selectedIndex = 4;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
