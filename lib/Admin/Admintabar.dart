import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Admin/Adminprofile.dart';

import 'Shopowners.dart';
import 'Userspage.dart';

class Admintabar extends StatefulWidget {
  const Admintabar({super.key});

  @override
  State<Admintabar> createState() => _AdmintabarState();
}

class _AdmintabarState extends State<Admintabar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Offerlight',
                  style: GoogleFonts.poppins(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Adminprofile();
                      },));
                    },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/img.png'),
                        radius: 32.r,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '  HRISHIKESH',
                          style: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 140.w),
                          child: Icon(CupertinoIcons.bell_solid,color: Colors.red,),
                        )],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
                            'USERS',
                            style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                          Tab(
                              child: Text(
                            'SHOP OWNER',
                            style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(children: [
                  Userspage(),
                  Shopowners()
            ]))
          ],
        ),
      ),
    );
    ();
  }
}
