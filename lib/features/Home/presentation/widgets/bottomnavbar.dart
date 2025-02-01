import 'package:flutter/material.dart';

BottomNavigationBar bottomNavBar(int index, ValueChanged<int> ontap) {
  return BottomNavigationBar(
    currentIndex: index,
    onTap: ontap,
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
  );
}