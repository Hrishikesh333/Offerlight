import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Shoptimes extends StatefulWidget {
  const Shoptimes({super.key});

  @override
  State<Shoptimes> createState() => _ShoptimesState();
}

class _ShoptimesState extends State<Shoptimes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400.h,
                width: 360.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.red.shade50,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Opening Hours',
                          style: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        Column(
                          children: [
                            Text(
                              'Open Now',
                              style: GoogleFonts.poppins(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  'Monday',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 180.w,
                                    ),
                                    Text(
                                      'Closed',
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.red),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10.w,),
                                Text(
                                  'Tuesday',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 110.w),
                                      child: Text(
                                        '1:00 pm -11:00pm',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Wednesday',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 90.w),
                                      child: Text(
                                        '1:00 pm -11:00pm',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Thursday',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 110.w),
                                      child: Text(
                                        '1:00 pm -11:00pm',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '   Friday',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 130.w),
                                      child: Text(
                                        '1:00 pm -11:00pm',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '   Saturday',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 100.w),
                                      child: Text(
                                        '1:00 pm -11:00pm',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '   Sunday',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 110.w),
                                      child: Text(
                                        '1:00 pm -11:00pm',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
