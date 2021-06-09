import 'package:beyond_static_app/screens/documentation.dart';
import 'package:beyond_static_app/screens/home.dart';
import 'package:beyond_static_app/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'dashboard.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentIndex = 0;

  List indexes = [false, false, false, false, false];

  List _widgetOptions = [
    Home(),
    DashBoard(),
    Documentation(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        items: [
          TabItem(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                'images/house.svg',
                color: Color(0xFF2D62ED),
              ),
            ),
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40.0,
              child: SvgPicture.asset(
                'images/folder.svg',
                color: Color(0xFF2D62ED),
              ),
            ),
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40.0,
              child: SvgPicture.asset(
                'images/doc_navbar.svg',
                color: Color(0xFF2D62ED),
              ),
            ),
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40.0,
              child: SvgPicture.asset(
                'images/settings.svg',
                color: Color(0xFF2D62ED),
              ),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_currentIndex),
    );
  }
}
