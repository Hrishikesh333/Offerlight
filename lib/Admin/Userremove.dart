import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Adminhomepage.dart';

class Userremove extends StatefulWidget {
  const Userremove({super.key});

  @override
  State<Userremove> createState() => _UserremoveState();
}

class _UserremoveState extends State<Userremove> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back),title: Padding(
        padding:  EdgeInsets.only(left: 120.w),
        child:  Text(
          'User',
          style: GoogleFonts.poppins(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/imgpic.jpeg'),
                    backgroundColor: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.only(left: 100.w, top: 100.h),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ), SizedBox(
                height: 40.h,
              ),
              Container(height: 1.h,width: 300.w,color: Colors.black26,),
              SizedBox(
                height: 60.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40.w,
                  ),
                  Icon(
                    CupertinoIcons.person,color: Colors.grey,
                    size: 40,
                  ),
                  Row(
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(right: 24.w),
                            child: Text(
                              'Name',
                              style: GoogleFonts.poppins(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),Row(
                            children: [
                              Text(
                                '  Adilmubark',
                                style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
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
              SizedBox(height: 15.h,),
              Row(
                children: [
                  SizedBox(
                    width: 42.w,
                  ),
                  Icon(
                    CupertinoIcons.home,color: Colors.grey,
                    size: 33,
                  ),
                  Row(
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 5.w),
                            child: Text(
                              '  Shop name',
                              style: GoogleFonts.poppins(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),Row(
                            children: [
                              Text(
                                'MoMo&ME',
                                style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
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
              SizedBox(height: 15.h,),
              Row(
                children: [
                  SizedBox(
                    width: 42.w,
                  ),
                  Icon(
                    CupertinoIcons.phone,color: Colors.grey,
                    size: 35,
                  ),
                  Row(
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(right: 27.w),
                            child: Text(
                              'Phone',
                              style: GoogleFonts.poppins(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),Row(
                            children: [
                              Text(
                                '  9496570471',
                                style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),SizedBox(height: 15.h,),
              Row(
                children: [
                  SizedBox(
                    width: 45.w,
                  ),
                  Icon(
                    CupertinoIcons.pin,color: Colors.grey,
                    size: 32,
                  ),
                  Row(
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '  Iteam',
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),Row(
                            children: [
                              Text(
                                '  Berger',
                                style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
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

          Padding(
            padding:  EdgeInsets.only(top: 600.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Adminhomepage();
                  },));
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
                        'Remove',
                        style: GoogleFonts.poppins(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
