import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mainproject/Admin/Adminnotifiview.dart';
import 'package:mainproject/Users/Homepage.dart';
import 'package:mainproject/Users/Viewpage.dart';

import 'Admin/Admintabar.dart';
import 'Admin/radeemapplyedurs.dart';



class NavigationBarExample extends StatefulWidget {
  @override
  _NavigationBarExampleState createState() => _NavigationBarExampleState();
}

class _NavigationBarExampleState extends State<NavigationBarExample> {
  int _selectedIndex = 0; // Track selected index

  // Screens for each tab
  final List<Widget> _screens = [
    Admintabar(),Radeemapplyedurs(),Adminnotifiview()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("")),
      body: _screens[_selectedIndex], // Display selected screen

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Change the selected index
          });
        },
        items: [
          BottomNavigationBarItem(backgroundColor: Colors.white,
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.gift_fill,
                color: Colors.black,
              ),
              label: "voucher"),  BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.bell_solid,
                color: Colors.black,
              ),
              label: "notification"),
        ],
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        selectedFontSize: 15.sp,
      ),
    );
  }
}
