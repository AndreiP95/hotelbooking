import 'package:flutter/material.dart';
import 'package:hotelbooking/utils/constants.dart';

class NavigationBar extends StatelessWidget {
  int selectedIndex;
  Function onTap;

  NavigationBar({this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: navigationItems(),
      backgroundColor: Colors.white,
      unselectedIconTheme: IconThemeData(size: 25),
      selectedIconTheme: IconThemeData(size: 30),
      unselectedItemColor: Colors.grey[500],
      showUnselectedLabels: true,
      unselectedFontSize: 14,
      selectedFontSize: 14,
      selectedItemColor: Color(kLightBlue),
      onTap: onTap,
      currentIndex: selectedIndex,
    );
  }

  List<BottomNavigationBarItem> navigationItems() {
    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        title: Text('Favourite'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        title: Text('Settings'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.exit_to_app),
        title: Text('Logout'),
      )
    ];
    return items;
  }
}
