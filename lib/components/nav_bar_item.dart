import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NavBarItem extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onpress;
  final int index;
  final Color iconcolor;

  const NavBarItem({
    super.key,
    required this.index,
    required this.image,
    required this.iconcolor,
    required this.title,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            color: iconcolor,
            image,
            width: 22.w,
            height: 21.76.h,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            title,
            style: TextStyle(
                color: iconcolor, fontWeight: FontWeight.w600, fontSize: 11.sp),
          )
        ],
      ),
    );
  }
}
