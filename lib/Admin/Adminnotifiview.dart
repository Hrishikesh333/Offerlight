import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../adminnavibar.dart';
import 'Adminnotification.dart';

class Adminnotifiview extends StatefulWidget {
  const Adminnotifiview({super.key});

  @override
  State<Adminnotifiview> createState() => _AdminnotifiviewState();
}

class _AdminnotifiviewState extends State<Adminnotifiview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: SizedBox(
          height: 70.h,
          width: 70.w,
          child: FloatingActionButton(
            backgroundColor: Colors.red,
            shape: CircleBorder(side: BorderSide(color: Colors.red.shade300)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Adminnotification();
                },
              ));
            },
            child: Icon(
              Icons.add,
              size: 50.sp,
              color: Colors.white,
            ),
            elevation: 20.sp,
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NavigationBarExample();
            },));
          },
              child: Icon(Icons.arrow_back)),
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Container(
                height: 120.h,
                child: Card(
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero,),color: Colors.grey.shade200,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.w, top: 8.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Content',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.sp)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: Text(
                                'Today every shop 50% off',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.sp)),
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
        ));
  }
}
