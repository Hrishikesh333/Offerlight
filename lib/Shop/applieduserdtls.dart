import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class applieduserdtls extends StatefulWidget {
  const applieduserdtls({super.key});

  @override
  State<applieduserdtls> createState() => _applieduserdtlsState();
}

class _applieduserdtlsState extends State<applieduserdtls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.r,
                backgroundImage: AssetImage('assets/img.png'),
              )
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 450.h,
                width: 350.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color: Colors.grey.shade50, width: 2),
                  boxShadow: [
                    // Adding shadow along the border
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 70.h,
                    ),
                    SizedBox(height: 2.h,),
                    Container(
                      height: 50.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Row(
                        children: [
                          SizedBox(width: 10.w,),
                          Text(
                            'Adilmubarak',
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h,),

                    SizedBox(height: 2.h,),
                    Container(
                      height: 50.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Row(
                        children: [
                          SizedBox(width: 10.w,),
                          Text(
                            'Kozhikode',
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h,),

                    SizedBox(height: 2.h,),
                    Container(
                      height: 50.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Row(
                        children: [
                          SizedBox(width: 10.w,),
                          Text(
                            'Mandi',
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    SizedBox(height: 2.h,),
                    Container(
                      height: 50.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Row(
                        children: [
                          SizedBox(width: 10.w,),
                          Text(
                            '9496570471',
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.red.shade500),
                          child: Center(
                            child: Text(
                              'Accept',
                              style: GoogleFonts.poppins(
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        ),Container(
                          height: 40.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.greenAccent.shade700),
                          child: Center(
                            child: Text(
                              'Reject',
                              style: GoogleFonts.poppins(
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
