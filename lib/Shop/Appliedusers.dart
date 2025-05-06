import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Appliedusers extends StatefulWidget {
  const Appliedusers({super.key});

  @override
  State<Appliedusers> createState() => _AppliedusersState();
}

class _AppliedusersState extends State<Appliedusers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                if (index == 1) {
                  return Column(
                    children: [],
                  );
                }
                return Container(height: 120.h,
                  margin: EdgeInsets.only(
                      left: 7.w, right: 7.w, bottom: 5.h, top: 5.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: Colors.grey.shade50, width: 2),
                    boxShadow: [
                      // Adding shadow along the border
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //   return Fooddetials();
                      // },));
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 100.h,
                      width: double.infinity,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/img.png'),
                            radius: 45.r,
                          ),
                          SizedBox(width: 20.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Adilmubarak',
                                    style: GoogleFonts.poppins(
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 40.w),
                                        child: Container(
                                          height: 30.h,
                                          width: 90.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                              color:
                                                  Colors.greenAccent.shade700),
                                          child: Center(
                                            child: Text(
                                              'Applied',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Nahadi',
                                        style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        '  Mandi',
                                        style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '9496570471',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
