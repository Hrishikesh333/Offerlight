import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/adminnavibar.dart';

class Adminnotification extends StatefulWidget {
  const Adminnotification({super.key});

  @override
  State<Adminnotification> createState() => _AdminnotificationState();
}

class _AdminnotificationState extends State<Adminnotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NavigationBarExample();
          },));
        },
            child: Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                'Enter mater',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.sp)),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Matter',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  )),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                'Enter mater',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.sp)),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: TextFormField(
              maxLines: 16,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Content...',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  )),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return NavigationBarExample();
                    },
                  ));
                },
                child: Container(
                  height: 50.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.red),
                  child: Center(
                      child: Text(
                    'Submit',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
