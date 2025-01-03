import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarComponent extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const AppBarComponent({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 207.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Color(0x9E9EF0B7),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.3484, 1.0],
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: SvgPicture.asset(
              'assets/icons/drawer.svg',
              width: 22.w,
              height: 25.h,
            ),
          ),
          SizedBox(width: 125.w),
          Image(
            height: 75.h,
            width: 48.w,
            image: AssetImage('assets/images/henrylogo.png'),
          ),
          SizedBox(width: 90.w),
          Stack(
            children: [
              Transform.scale(
                scale: 1.3.sp,
                child: Switch(
                  trackOutlineColor: WidgetStatePropertyAll(Colors.transparent),
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Color(0xff57B674),
                  activeTrackColor: Color(0xff57B674),
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 5.w),
                child: Text(
                  'Eng',
                  style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10.w),
        ],
      ),
    );
  }
}
