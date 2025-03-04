import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              Text(
                '  Offerlight',
                style: GoogleFonts.poppins(
                    fontSize: 35.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 15.w,
              ),
              CircleAvatar(
                radius: 28.r,
                backgroundImage: AssetImage('assets/img.png'),
              ),
              Row(
                children: [
                  Text(
                    '  Hi Adilmubark',
                    style: GoogleFonts.poppins(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 110.w,
                      ),
                      Icon(
                        CupertinoIcons.bell_solid,
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15.sp),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r)),
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Colors.red,
                  ),
                  hintText: 'search'),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    height: 100.h,
                    child: Card(
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0), // Added padding inside the card
                        child: Text(""),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
