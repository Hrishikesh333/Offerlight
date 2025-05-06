import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Users/Homepage.dart';

import 'Aboutshop.dart';
import 'Offerstabbar.dart';
import 'Redeempage.dart';

class Viewpage extends StatefulWidget {
  const Viewpage({super.key});

  @override
  State<Viewpage> createState() => _ViewpageState();
}

class _ViewpageState extends State<Viewpage> {
  @override
  build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Padding(
                    padding:  EdgeInsets.only(right: 350.w,bottom: 200.h),
                    child: InkWell(onTap: () {
                     Navigator.of(context).pop();
                    },child: Icon(CupertinoIcons.arrow_left)),
                  ),
                  height: 270.h,
                  width: 412.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.r),
                          bottomRight: Radius.circular(10.r)),
                      image: DecorationImage(
                          image: AssetImage('assets/ramth.jpg'),
                          fit: BoxFit.cover)),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 50.h,
                    width: 380.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Colors.red.shade200,
                    ),
                    child: TabBar(
                      automaticIndicatorColorAdjustment:
                          EditableText.debugDeterministicCursor,
                      labelColor: Colors.black54,
                      unselectedLabelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.red),
                      tabs: [
                        Tab(
                            child: Text(
                          'Offers',
                          style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                        Tab(
                            child: Text(
                          'Redeem code',
                          style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                        Tab(
                            child: Text(
                          'About',
                          style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Expanded(
                child: TabBarView(children: [
                  Offerstabbar(),
                  Redeempage(),
                  Aboutshop()
                ]))
          ],
        ),
      ),
    );
  }
}
