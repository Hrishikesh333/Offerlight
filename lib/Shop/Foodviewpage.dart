import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Shop/Navigation%20bar%20shopowner.dart';
import 'package:mainproject/Users/Aboutshop.dart';
import 'package:mainproject/Users/Homepage.dart';

import 'Offersadd.dart';
import 'Redeemcode.dart';
import 'Shopdtlsadd.dart';
//
// import 'Aboutshop.dart';
// import 'Offerstabbar.dart';
// import 'Redeempage.dart';

class Foodviewpage extends StatefulWidget {
  const Foodviewpage({super.key});

  @override
  State<Foodviewpage> createState() => _FoodviewpageState();
}

class _FoodviewpageState extends State<Foodviewpage> {
  @override
  build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(appBar: AppBar(),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              children: [
                Container(
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
                  Offersadd(),
                  Redeemcode(),
                  Aboutshop()
            ]))
          ],
        ),
      ),
    );
  }
}
