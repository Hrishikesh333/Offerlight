import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Shop/Navigation%20bar%20shopowner.dart';

import 'Addshoptime.dart';

class Shopaboutadd extends StatefulWidget {
  const Shopaboutadd({super.key});

  @override
  State<Shopaboutadd> createState() => _ShopaboutaddState();
}

class _ShopaboutaddState extends State<Shopaboutadd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 22.w,
              ),
              Text(
                'Rahmath Hotel',
                style: GoogleFonts.poppins(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.red),
              ),
            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              SizedBox(
                width: 23.w,
              ),
              Text(
                'About',
                style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Addshoptime();
                },));
              },
                child: Text(
                  '   Open time',
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.green),
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              )
            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Container(
                height: 50.h,
                width: 360.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.grey.shade200),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Booking number',
                      style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50.w,
                        ),
                        Text(
                          '9495960471',
                          style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Icon(
                          Icons.call,
                          size: 20.sp,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),SizedBox(height: 15.h,), Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Container(
                height: 50.h,
                width: 360.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.grey.shade200),
                child: Row(
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      'Location',
                      style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 215.w,
                        ),
                        Icon(
                          Icons.location_on_outlined,color: Colors.black,
                          size: 25.sp,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),SizedBox(height: 15.h,), Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Shopnavibar();
                },));
              },
                child: Container(
                  height: 50.h,
                  width: 360.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.grey.shade200),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Rating&Feedback',
                        style: GoogleFonts.poppins(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 135.w,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 20.sp,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
