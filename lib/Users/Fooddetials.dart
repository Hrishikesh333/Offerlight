import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Users/Viewpage.dart';

class Fooddetials extends StatefulWidget {
  const Fooddetials({super.key});

  @override
  State<Fooddetials> createState() => _FooddetialsState();
}

class _FooddetialsState extends State<Fooddetials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Viewpage();
                },));
              },
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(right: 350.w, bottom: 170.h),
                    child: Icon(CupertinoIcons.arrow_left),
                  ),
                  height: 270.h,
                  width: 412.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.r),
                          bottomRight: Radius.circular(10.r)),
                      image: DecorationImage(
                          image: AssetImage('assets/burger.jpg'),
                          fit: BoxFit.cover)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    children: [
                      Text(
                        'Double cheese Burger',
                        style: GoogleFonts.poppins(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2),
                            child: Text(
                              'Rahmath Hotel',
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(
                            CupertinoIcons.star_fill,
                            size: 23,
                            color: Colors.greenAccent.shade700,
                          ),
                          Icon(
                            CupertinoIcons.star_fill,
                            size: 23,
                            color: Colors.greenAccent.shade700,
                          ),
                          Icon(
                            CupertinoIcons.star_fill,
                            size: 23,
                            color: Colors.greenAccent.shade700,
                          ),
                          Icon(
                            CupertinoIcons.star_fill,
                            size: 23,
                            color: Colors.greenAccent.shade700,
                          ),
                          Icon(
                            CupertinoIcons.star_fill,
                            size: 23,
                            color: Colors.greenAccent.shade700,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 170.w),
                        child: Text(
                          'Fried chicken',
                          style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 170.w),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.money_dollar,
                              size: 30.sp,
                            ),
                            Text(
                              '180',
                              style: GoogleFonts.poppins(
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            Icon(
                              CupertinoIcons.money_dollar,
                              size: 20.sp,
                              color: Colors.grey,
                            ),
                            Text(
                              '250',
                              style: GoogleFonts.poppins(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 190),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.money_dollar,
                              size: 22.sp,
                              color: Colors.grey,
                            ),
                            Text(
                              'Saved 70',
                              style: GoogleFonts.poppins(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 105),
                        child: Row(
                          children: [
                            Text(
                              'Offer days ',
                              style: GoogleFonts.poppins(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey),
                            ),
                            Text(
                              '2days left ',
                              style: GoogleFonts.poppins(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 150.w),
                        child: Row(
                          children: [
                            Text(
                              'Discription ',
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Explain',
                            style: GoogleFonts.poppins(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 200.h,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Viewpage();
                    },));
                  },
                    child: Container(
                      height: 40.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: Colors.red),
                      child: Center(
                        child: Text(
                          'OK',
                          style: GoogleFonts.poppins(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
