import 'booking.dart';
import 'dashboard.dart';
import 'home.dart';
import 'profile.dart';
import 'events.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hamrofutsal/setting.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> widgetList = [
    Home(),
    Events(),
    Booking(),
    Profile(),
    Account(),
  ];
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetList[current_index],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: current_index,
          onTap: (index) {
            setState(() {
              current_index = index;
            });
          },
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.event), label: "Events"),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_outlined), label: "Booking"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: "Setting"),
          ],
        ));
  }
}
