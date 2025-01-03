import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:poultry_pro/components/app_bar_component.dart';
import 'package:poultry_pro/components/button.dart';

class HomeScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HomeScreen({super.key, required this.scaffoldKey});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> provinces = ['Punjab', 'Sindh', 'KPK', 'Balochistan'];

  @override
  Widget build(BuildContext context) {
    DateTime currentdatetime = DateTime.now();
    String formattedDate =
        DateFormat('EEEE, d MMMM yyyy').format(currentdatetime);

    return Scaffold(
      backgroundColor: Color(0xffF4FAF2),
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                AppBarComponent(
                  scaffoldKey: widget.scaffoldKey,
                ),
                //Start of green container
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 160.h),
                      child: Center(
                        child: Container(
                          height: 133.h,
                          width: 370.w,
                          decoration: BoxDecoration(
                              color: Color(0xff57B674),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15.h,
                              ),
                              Center(
                                child: Container(
                                  height: 46.07.h,
                                  width: 320.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xff83C998),
                                      borderRadius:
                                          BorderRadius.circular(23.r)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Today\'s Stock',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.sp,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Container(
                                        height: 30.h,
                                        width: 180.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xff57B674),
                                            borderRadius:
                                                BorderRadius.circular(23.r)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/calendar.svg',
                                              width: 12.w,
                                              height: 14.h,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              //  'Thursday, 5 December 2024',
                                              formattedDate.toString(),
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 22.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/farmer.svg',
                                              width: 28.w,
                                              height: 29.h,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              'Farmers',
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        Transform.translate(
                                          offset: Offset(0, -4),
                                          child: Text(
                                            '800',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              height: 1.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/chicken.svg',
                                              width: 28.w,
                                              height: 29.h,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              'Chicken',
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        Transform.translate(
                                          offset: Offset(0, -4),
                                          child: Text(
                                            '800',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              height: 1.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/eggs.svg',
                                              width: 28.w,
                                              height: 29.h,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              'Eggs',
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        Transform.translate(
                                          offset: Offset(0, -4),
                                          child: Text(
                                            '22',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              height: 1.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today’s Poultry Rates',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 234.h,
                    width: 370.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 12.w, right: 12.w, top: 24.h, bottom: 24.h),
                      child: Column(
                        children: [
                          //Formfield 1
                          Center(
                            child: SizedBox(
                              height: 46.h,
                              width: 370.w,
                              child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10.h, horizontal: 15.w),
                                      hintText: 'Select Tehsil',
                                      hintStyle: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff22222)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color(0xffEAEAEA))),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color(0xffEAEAEA)))),
                                  items: provinces
                                      .map((province) => DropdownMenuItem(
                                            value: province,
                                            child: Text(province),
                                          ))
                                      .toList(),
                                  onChanged: (value) {}),
                            ),
                          ),

                          SizedBox(
                            height: 24.h,
                          ),
                          //Formfield 2

                          Center(
                            child: SizedBox(
                              height: 46.h,
                              width: 370.w,
                              child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10.h, horizontal: 15.w),
                                      hintText: 'Select Tehsil',
                                      hintStyle: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff22222)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color(0xffEAEAEA))),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color(0xffEAEAEA)))),
                                  items: provinces
                                      .map((province) => DropdownMenuItem(
                                            value: province,
                                            child: Text(province),
                                          ))
                                      .toList(),
                                  onChanged: (value) {}),
                            ),
                          ),

                          SizedBox(
                            height: 24.h,
                          ),
                          //Formfield 3

                          Center(
                            child: SizedBox(
                              height: 46.h,
                              width: 370.w,
                              child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10.h, horizontal: 15.w),
                                      hintText: 'Select Tehsil',
                                      hintStyle: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff22222)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color(0xffEAEAEA))),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color(0xffEAEAEA)))),
                                  items: provinces
                                      .map((province) => DropdownMenuItem(
                                            value: province,
                                            child: Text(province),
                                          ))
                                      .toList(),
                                  onChanged: (value) {}),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  NewButton(
                      onpress: () {},
                      buttoncolor: Color(0xff57B674),
                      text: 'Get Rates',
                      textcolor: Colors.white),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        color: Colors.black,
                        'assets/icons/calendar.svg',
                        width: 15.w,
                        height: 17.h,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        formattedDate.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      dataTextStyle: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 14.sp),
                      headingTextStyle: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14.sp),
                      headingRowColor:
                          WidgetStateProperty.all(Color(0xffEAEAEA)),
                      dataRowColor: WidgetStateProperty.all(Colors.white),
                      columns: <DataColumn>[
                        DataColumn(label: Text('#')),
                        DataColumn(label: Text('Product')),
                        DataColumn(label: Text('Type')),
                        DataColumn(label: Text('Price per kg')),
                        DataColumn(label: Text('Farmer')),
                        DataColumn(label: Text('Stock')),
                      ],
                      rows: const <DataRow>[
                        DataRow(cells: <DataCell>[
                          DataCell(Text('1')),
                          DataCell(Text('Chicken')),
                          DataCell(Text('Broiler')),
                          DataCell(Text('Rs. 415')),
                          DataCell(Text('Rs. 330')),
                          DataCell(Text('Rs. 800')),
                        ]),
                        DataRow(cells: <DataCell>[
                          DataCell(Text('2')),
                          DataCell(Text('Chicken')),
                          DataCell(Text('Layer')),
                          DataCell(Text('Rs. 420')),
                          DataCell(Text('Rs. 245')),
                          DataCell(Text('Rs. 683')),
                        ]),
                        DataRow(cells: <DataCell>[
                          DataCell(Text('3')),
                          DataCell(Text('Chicken')),
                          DataCell(Text('Free Range')),
                          DataCell(Text('Rs. 525')),
                          DataCell(Text('Rs. 62')),
                          DataCell(Text('Rs. 323')),
                        ]),
                        DataRow(cells: <DataCell>[
                          DataCell(Text('4')),
                          DataCell(Text('Chick')),
                          DataCell(Text('Layer Chick')),
                          DataCell(Text('Rs. 250')),
                          DataCell(Text('Rs. 783')),
                          DataCell(Text('Rs. 415')),
                        ]),
                        DataRow(cells: <DataCell>[
                          DataCell(Text('5')),
                          DataCell(Text('Chick')),
                          DataCell(Text('Broiler Chick')),
                          DataCell(Text('Rs. 350')),
                          DataCell(Text('Rs. 100')),
                          DataCell(Text('Rs. 215')),
                        ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  NewButton(
                      iconimage: 'assets/icons/update.svg',
                      onpress: () {},
                      buttoncolor: Color(0xff57B674),
                      text: 'Get Rates',
                      textcolor: Colors.white),
                  SizedBox(
                    height: 20.h,
                  ),
                  NewButton(
                      iconimage: 'assets/icons/refresh.svg',
                      onpress: () {},
                      buttoncolor: Colors.white,
                      text: 'Refresh',
                      textcolor: Color(0xff828282)),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
