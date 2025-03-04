import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Usernavibar extends StatefulWidget {
  const Usernavibar({super.key});

  @override
  State<Usernavibar> createState() => _UsernavibarState();
}

class _UsernavibarState extends State<Usernavibar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.red,
          items: [
        Icon(CupertinoIcons.home),
        Icon(CupertinoIcons.person_solid),
      ]),
    );
  }
}
