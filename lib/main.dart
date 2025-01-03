import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poultry_pro/bottom_nav_bar/bottom_nav_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size designSize = const Size(402, 957);
    final isTablet = MediaQuery.of(context).size.shortestSide >= 600;
    if (isTablet) {
      designSize = const Size(810, 1080);
    }
    return ScreenUtilInit(
        designSize: designSize,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          //   final MediaQueryData data = MediaQuery.of(context);
          return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(1)),
            child: MaterialApp(
              title: 'RESQ',
              //           theme: light,
              debugShowCheckedModeBanner: false,
              home: BottomNavBar(),
            ),
          );
        });
  }
}
