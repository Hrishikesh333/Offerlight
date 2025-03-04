import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(Adminnavibar());
}

class Adminnavibar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBarExample(),
    );
  }
}

class NavigationBarExample extends StatefulWidget {
  @override
  _NavigationBarExampleState createState() => _NavigationBarExampleState();
}

class _NavigationBarExampleState extends State<NavigationBarExample> {
  int _selectedIndex = 0; // Track selected index

  // Screens for each tab
  final List<Widget> _screens = [
    Center(child: Text("Home Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Profile", style: TextStyle(fontSize: 24))),
    Center(child: Text("notification", style: TextStyle(fontSize: 24))),
  ];

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
