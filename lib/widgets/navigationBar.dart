import 'package:flutter/material.dart';

class navigationBar extends StatefulWidget {
  navigationBar({super.key});

  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            size: 30.0,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.list_alt_outlined,
            size: 30,
          ),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.apps_outlined,
            size: 30.0,
          ),
          label: 'Products',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.layers_rounded,
            size: 30.0,
          ),
          label: 'Manage',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
            size: 30.0,
          ),
          label: 'Accout',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue.shade800,
      unselectedItemColor: Colors.grey.shade600,
      onTap: _onItemTapped,
    );
  }
}
