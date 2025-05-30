import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Users/Offerstabbar.dart';
import 'package:mainproject/Users/Viewpage.dart';

class Homepagee extends StatefulWidget {
  const Homepagee({super.key});

  @override
  State<Homepagee> createState() => _HomepageeState();
}

class _HomepageeState extends State<Homepagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
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
              Text(
                '  Hi Adilmubark',
                style: GoogleFonts.poppins(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Spacer(),
              Icon(
                CupertinoIcons.bell_solid,
                color: Colors.red,
              ),
              SizedBox(
                width: 10.w,
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Viewpage();
              },));
            },
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      height: 150.h,
                      child: Card(
                        child: Row(
                          children: [
                            SizedBox(width: 10.w),
                            Container(
                              height: 100.h,
                              width: 120.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(top: 12.h),
                                    child: Text(
                                      'Special Offer',
                                      style: GoogleFonts.poppins(
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Padding(
                                    padding:  EdgeInsets.only(right: 10.w),
                                    child: Text(
                                      'Rahmath Hotel is a Kerala restaurant, halal restaurant, Indian restaurant, and seafood restaurant located in Kozhikode, Kerala. The average rating of this place is 4.30 out of 5 stars.',
                                      style: GoogleFonts.poppins(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      RatingBarIndicator(
                                        rating: 2.0,
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        itemCount: 5,
                                        itemSize: 15,
                                        direction: Axis.horizontal,
                                      ),
                                    ],
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
