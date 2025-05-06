import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Shopnotification extends StatefulWidget {
  const Shopnotification({super.key});

  @override
  State<Shopnotification> createState() => _ShopnotificationState();
}

class _ShopnotificationState extends State<Shopnotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Notification',
                style: GoogleFonts.poppins(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 10.w,right: 10.w),
                  child: Container(
                    height: 120.h,
                    child: Card(color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          side: BorderSide(color: Colors.black)),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12.w, top: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Matter',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.h),
                                  child: Text(
                                    'Content',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18.sp,
                                        color: Colors.grey),
                                  ),
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
          )
        ],
      ),
    );();
  }
}
