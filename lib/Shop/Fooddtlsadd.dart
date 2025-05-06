import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Shop/Navigation%20bar%20shopowner.dart';

class Fooddtlsadd extends StatefulWidget {
  const Fooddtlsadd({super.key});

  @override
  State<Fooddtlsadd> createState() => _FooddtlsaddState();
}

class _FooddtlsaddState extends State<Fooddtlsadd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 30.h,
              ),
              Column(
                children: [
                  Container(
                    height: 70.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.grey.shade300),
                    child: Center(
                        child: Icon(
                      Icons.add,
                    )),
                  ),
                  Row(
                    children: [
                      Text(
                        'Add Image',
                        style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
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
                hintText: "Food Name",
                fillColor: Colors.grey.shade50,
                suffixIcon: Icon(
                  Icons.edit,
                  color: Colors.grey.shade700,
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
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 5.h),
            child: TextFormField(
              maxLines: 10,
              validator: (value) {
                if (value!.isEmpty) {
                  return "empty username";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Discription",
                fillColor: Colors.grey.shade50,
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
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200.w,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "empty username";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Normal price",
                      fillColor: Colors.grey.shade50,
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
                Container(
                  width: 150.w,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "empty username";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Offer price",
                      fillColor: Colors.grey.shade50,
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
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
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
                hintText: "Offer time",
                fillColor: Colors.grey.shade50,
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
          SizedBox(height: 50.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
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
              )
            ],
          )
        ],
      ),
    );
  }
}
