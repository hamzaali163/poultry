import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NewButton extends StatelessWidget {
  final Color buttoncolor;
  final Color textcolor;
  final VoidCallback onpress;
  final String iconimage;

  final String text;
  const NewButton(
      {super.key,
      this.iconimage = '',
      required this.buttoncolor,
      required this.text,
      required this.onpress,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 46.h,
        width: 370.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: buttoncolor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconimage == ''
                ? SizedBox()
                : SvgPicture.asset(
                    color: textcolor,
                    iconimage,
                    width: 25.w,
                    height: 25.h,
                  ),
            SizedBox(
              width: 12.w,
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: textcolor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
