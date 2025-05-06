import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:mainproject/Users/Userprofile.dart';

import 'Homepage.dart';

class Usernavibar extends StatefulWidget {
  const Usernavibar({super.key});

  @override
  State<Usernavibar> createState() => _UsernavibarState();
}

class _UsernavibarState extends State<Usernavibar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Homepagee(),
  Userprofile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.red,
        items: [
          Icon(CupertinoIcons.home),
          Icon(CupertinoIcons.person_solid),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}