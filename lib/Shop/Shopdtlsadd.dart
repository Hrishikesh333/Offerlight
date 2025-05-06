import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Shop/Homepage.dart';
import 'package:mainproject/Shop/Navigation%20bar%20shopowner.dart';

class Shopdtlsadd extends StatefulWidget {
  const Shopdtlsadd({super.key});

  @override
  State<Shopdtlsadd> createState() => _ShopdtlsaddState();
}

class _ShopdtlsaddState extends State<Shopdtlsadd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                width: 20.w,
              ),
              Column(
                children: [
                  Container(
                    height: 150.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: Colors.grey.shade200),
                    child: Center(child: Icon(Icons.add)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Add shop Picture',
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 5.h),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "empty username";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Shop name",
                fillColor: Colors.grey.shade50,
                suffixIcon: Icon(Icons.edit,color: Colors.grey.shade700,),
                filled: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
          ),SizedBox(height: 10.h,),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 5.h),
            child: TextFormField(maxLines: 12,
              validator: (value) {
                if (value!.isEmpty) {
                  return "empty username";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "About your shop",
                fillColor: Colors.grey.shade50,
                suffixIcon: Padding(
                  padding:  EdgeInsets.only(bottom: 250.h),
                  child: Icon(Icons.edit,color: Colors.grey.shade700,),
                ),
                filled: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
          ),
          SizedBox(height: 70.h,),
          InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Shopnavibar();
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
                  'Submit',
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
