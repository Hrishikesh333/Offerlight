import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Users/Fooddetials.dart';

class Offerstabbar extends StatefulWidget {
  const Offerstabbar({super.key});

  @override
  State<Offerstabbar> createState() => _OfferstabbarState();
}

class _OfferstabbarState extends State<Offerstabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 1),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    height: 120.h,
                    child: Card(
                      child: Row(
                        children: [
                          SizedBox(width: 10.w),
                          Container(
                            height: 100.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(top: 10.h),
                                  child: Text(
                                    'Chicken burger',
                                    style: GoogleFonts.poppins(
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(right: 10.w),
                                  child: Text(
                                    'Fried chicken ',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade800,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(right: 10.w),
                                  child: Row(
                                    children: [
                                      Text(
                                        '180',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.red.shade800,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),Row(children: [ Text(
                                        '   Save 50',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.green.shade900,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),],)
                                    ],
                                  ),
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    RatingBarIndicator(
                                      rating: 2.0,
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      itemCount: 5,
                                      itemSize: 15,
                                      direction: Axis.horizontal,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
