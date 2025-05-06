import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Users/Homepage.dart';

class Ratingpage extends StatefulWidget {
  const Ratingpage({super.key});

  @override
  State<Ratingpage> createState() => _RatingpageState();
}

class _RatingpageState extends State<Ratingpage> {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Rating',
                style: GoogleFonts.poppins(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.red),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'The rating giving to you',
                style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade300),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.star_fill,
                size: 30,
                color: Colors.greenAccent.shade700,
              ),
              Icon(
                CupertinoIcons.star_fill,
                size: 30,
                color: Colors.greenAccent.shade700,
              ),
              Icon(
                CupertinoIcons.star_fill,
                size: 30,
                color: Colors.greenAccent.shade700,
              ),
              Icon(
                CupertinoIcons.star_fill,
                size: 30,
                color: Colors.greenAccent.shade700,
              ),
              Icon(
                CupertinoIcons.star_fill,
                size: 30,
                color: Colors.greenAccent.shade700,
              ),
            ],
          ),
          SizedBox(
            height: 60.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'What do you love about this ?',
                style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Container(
              height: 350.h,
              width: 350.w,
              child: TextFormField(
                maxLines: 16,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'Content...',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 80.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Homepagee();
                    },
                  ));
                },
                child: Container(
                  height: 40.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
