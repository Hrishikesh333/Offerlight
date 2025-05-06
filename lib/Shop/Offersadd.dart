import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Shop/Fooddtlsadd.dart';

import '../Users/Fooddetials.dart';
import 'Shopdtlsadd.dart';

class Offersadd extends StatefulWidget {
  const Offersadd({super.key});

  @override
  State<Offersadd> createState() => _OffersaddState();
}

class _OffersaddState extends State<Offersadd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Column(
                    children: [],
                  );
                }
                return Card(
                  child: InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Fooddetials();
                    },));
                  },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: Colors.black)),
                      height: 100.h,
                      width: 150.w,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Container(
                                height: 80.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Colors.red)),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(top: 10.h),
                                    child: Text(
                                      '   Chicken Burger',
                                      style: GoogleFonts.poppins(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(right: 55.w),
                                    child: Text(
                                      'Fried chicken',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey.shade700),
                                    ),
                                  ),Column(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(right: 10.w),
                                        child: Row(
                                          children: [
                                            Text(
                                              '180',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 22.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ), Text(
                                              '    Saved  ',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),Text(
                                              ' 50 ',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),floatingActionButton: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Fooddtlsadd();
        },));
          // Define the action for the floating action button here
        },
        child: SizedBox(
          width: 60.w,
          height: 60.h,
          child: Icon(
            CupertinoIcons.add,
            color: Colors.white,
            size: 30.sp,
          ),
        ),
      ),
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
