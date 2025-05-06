import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Shop/Foodviewpage.dart';

import '../Users/Homepage.dart';

class Redeemcode extends StatefulWidget {
  const Redeemcode({super.key});

  @override
  State<Redeemcode> createState() => _RedeemcodeState();
}

class _RedeemcodeState extends State<Redeemcode> {
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
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shadowColor: Colors.white,
                    backgroundColor: Colors.red,
                    content: Form(
                        child: SizedBox(
                      height: 350.h,
                      width: 300.w,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'empty Content';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r)),
                                hintText: "Percentage",
                                fillColor: Colors.white,
                                filled: true),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Empty text';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r)),
                                hintText: 'Which Offer'),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Empty text';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r)),
                                hintText: 'Item'),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Empty text';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r)),
                                hintText: 'Redeemcode'),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Empty text';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r)),
                                hintText: 'Validity'),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return Foodviewpage();
                                },));
                              },
                                child: Container(
                                  height: 30.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Submit',
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.red),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                    title: Text(
                      'Add Offer Details',
                      style: GoogleFonts.poppins(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  );
                },
              );
            },
            child: Icon(
              Icons.add,
              size: 50.sp,
              color: Colors.white,
            ),
            elevation: 30.sp,
          ),
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Container(
                height: 130.h,
                child: Card(
                  color: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              ' 50%',
                              style: GoogleFonts.poppins(
                                  fontSize: 28.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              ' OFF',
                              style: GoogleFonts.poppins(
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        height: 150.h,
                        width: 130.w,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 50.w),
                                child: Text(
                                  ' Special Offer',
                                  style: GoogleFonts.poppins(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 100.w),
                            child: Row(
                              children: [
                                Text(
                                  'Promocode',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 72),
                            child: Row(
                              children: [
                                Text(
                                  'Chicken Burger',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 120.r),
                            child: Row(
                              children: [
                                Text(
                                  'AFR567F',
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.red.shade500),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15.w),
                                child: Text(
                                  '  Valid until 12 may 2025',
                                  style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade500),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 45.w),
                                    child: Icon(
                                      CupertinoIcons.delete,
                                      size: 20.sp,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
