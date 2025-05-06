import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Ratingpages extends StatefulWidget {
  const Ratingpages({super.key});

  @override
  State<Ratingpages> createState() => _RatingpagesState();
}

class _RatingpagesState extends State<Ratingpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 50.w),
            child: Text(
              'The rating giving to you',
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 3.h),
            child: Center(
              child: Container(
                height: 150.h,
                width: 380.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, top: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/pfl2.png'),
                          ),
                          SizedBox(height: 7.h),
                          Text(
                            ' username',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.h),
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
                    ),
                    SizedBox(width: 30.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp,
                          ),
                        ),
                        Text(
                          'Item',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp,
                          ),
                        ),
                        Text(
                          'Date',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp,
                          ),
                        ),
                        Text(
                          'location',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 30.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rating',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'Rating&Feedback',
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
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
    );
  }
}
