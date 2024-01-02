import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavigationBar1 extends StatelessWidget {
  final int selectedTab;
  final ValueChanged<int> onTabSelected;

  const NavigationBar1({
    super.key,
    required this.selectedTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      color: Colors.teal,
      index: selectedTab,
      items: [
        Icon(Icons.home, size: 30),
        Icon(Icons.person, size: 30),
        Icon(Icons.work, size: 30),
        Icon(Icons.mail, size: 30),
      ],
      onTap: onTabSelected,
    );
  }
}
