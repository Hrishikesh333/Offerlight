import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Users/Homepage.dart';

class Redeempage extends StatefulWidget {
  const Redeempage({super.key});

  @override
  State<Redeempage> createState() => _RedeempageState();
}

class _RedeempageState extends State<Redeempage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Container(
                height: 130.h,
                child: Card(
                  color: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              ' 50%',
                              style: GoogleFonts.poppins(
                                  fontSize: 28.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              ' OFF',
                              style: GoogleFonts.poppins(
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        height: 150.h,
                        width: 130.w,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 1.w),
                                child: Text(
                                  ' Special Offer',
                                  style: GoogleFonts.poppins(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ), Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.h,left: 10.w),
                                    child: Container(
                                      height: 30.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(5.r),
                                          color:
                                          Colors.red.shade500),
                                      child: Center(
                                        child: Text(
                                          'Apply',
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 140.w,),
                            child: Row(
                              children: [
                                Text(
                                  'Promocode',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 110),
                            child: Row(
                              children: [
                                Text(
                                  'Chicken Burger',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 155.r),
                            child: Row(
                              children: [
                                Text(
                                  'AFR567F',
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.red.shade500),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 85.w),
                                child: Text(
                                  '  Valid until 12 may 2025',
                                  style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade500),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
