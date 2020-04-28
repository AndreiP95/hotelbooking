import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelbooking/ui/screens/main_navigation/favourite_items.dart';
import 'package:hotelbooking/ui/screens/main_navigation/hotel_dashboard.dart';
import 'package:hotelbooking/ui/screens/main_navigation/user_settings.dart';
import 'package:hotelbooking/ui/widgets/navigation_bar.dart';
import 'package:hotelbooking/utils/constants.dart';

class BaseNavigation extends StatefulWidget {
  @override
  _BaseNavigationState createState() => _BaseNavigationState();
}

class _BaseNavigationState extends State<BaseNavigation> {
  int currentIndex = 0;

  Widget getSelectedTab() {
    switch(currentIndex) {
      case 0: return HotelDashboard();
      case 1: return FavouriteItems();
      case 2: return UserSettings();
      case 3: {
        FirebaseAuth.instance.signOut();
        Navigator.pop(context);
        return null;
      }
      default: {
        FirebaseAuth.instance.signOut();
        Navigator.pop(context);
        return null;
      }
    }
  }

  void updateIndex(int index) {
    setState(() {
      print(index);
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(kLightBlue),
        centerTitle: true,
        title: Text('Hotelurile mele'),
      ),
      bottomNavigationBar:
      NavigationBar(selectedIndex: currentIndex, onTap: updateIndex),
      backgroundColor: Colors.white,
      body: getSelectedTab()
    );
  }

}
