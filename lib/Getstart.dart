import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Getstart extends StatefulWidget {
  const Getstart({super.key});

  @override
  State<Getstart> createState() => _GetstartState();
}

class _GetstartState extends State<Getstart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fudimg 1.jpg'), fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: 480.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '  Are',
                  style: GoogleFonts.rubikVinyl(
                      fontSize: 70.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '  You',
                  style: GoogleFonts.rubikVinyl(
                      fontSize: 70.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '  Hungry',
                  style: GoogleFonts.rubikVinyl(
                      fontSize: 70.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70.h,
                  width: 370.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.red),
                  child: Row(
                    children: [
                      Text(
                        '  Get Start',
                        style: GoogleFonts.bevan(
                            fontSize: 40.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 80.w),
                        child: CircleAvatar(radius: 25.r,
                          backgroundColor: Colors.white,
                          child: Icon(CupertinoIcons.arrow_right_circle_fill,size: 52.sp,color: Colors.red,),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
