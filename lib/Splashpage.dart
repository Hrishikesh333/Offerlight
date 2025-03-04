import 'dart:async';

// import 'package:car_app/user_or%20_mechpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/adminnavibar.dart';
// import 'package:miniproject/Userormech.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Navigator.push(context, MaterialPageRoute(
      //   builder: (context) {
      //     return Adminnavibar();
      //   },
      // ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 160.h,
              width: 160.w,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/fui2.png"))),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Offerlight',
                style: GoogleFonts.rubikVinyl(
                  fontSize: 50.sp,
                  fontWeight: FontWeight.bold,color: Colors.red
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
