import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mainproject/Shop/Shopdtlsadd.dart';

import 'Homepage.dart';
import 'Shopownerprofile.dart';

class Shopnavibar extends StatefulWidget {
  const Shopnavibar({super.key});

  @override
  State<Shopnavibar> createState() => _ShopnavibarState();
}

class _ShopnavibarState extends State<Shopnavibar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Homepages(),
    Shopownerprofile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
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
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_solid, color: Colors.black),
              label: "Profile"
          ),
        ],
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        selectedFontSize: 15.sp,
      ),

      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: InkWell(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Shopdtlsadd();
          },));
            // Define the action for the floating action button here
          },
          child: SizedBox(
            width: 60.w,
            height: 60.h,
            child: Icon(
              CupertinoIcons.add,
              color: Colors.white,
              size: 30.sp,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Homepage'));
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Page'));
  }
}