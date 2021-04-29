import 'package:flutter/material.dart';

var navItems = [
  BottomNavigationBarItem(
    activeIcon: Container(
        padding: EdgeInsets.all(10.0),
        decoration:
            BoxDecoration(color: Color(0xff5FF9CB), shape: BoxShape.circle),
        child: Image.asset("asset/icons/first_tab.png")),
    label: "",
    icon: Image.asset("asset/icons/first_tab.png"),
    // title: Text(""),
  ),
  BottomNavigationBarItem(
    label: "",
    icon: Image.asset("asset/icons/second_tab.png"),
  ),
  BottomNavigationBarItem(
    label: "",
    icon: Image.asset("asset/icons/third_tab.png"),
  ),
  BottomNavigationBarItem(
    label: "",
    icon: Image.asset("asset/icons/fourth_tab.png"),
  ),
];
