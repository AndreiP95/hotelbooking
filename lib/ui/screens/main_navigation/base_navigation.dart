import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelbooking/strings/strings_en.dart';
import 'package:hotelbooking/ui/screens/main_navigation/favourite_items.dart';
import 'package:hotelbooking/ui/screens/main_navigation/hotel_list.dart';
import 'package:hotelbooking/ui/screens/main_navigation/user_settings.dart';
import 'package:hotelbooking/ui/widgets/navigation_bar.dart';
import 'package:hotelbooking/utils/constants.dart';

class BaseNavigation extends StatefulWidget {
  @override
  _BaseNavigationState createState() => _BaseNavigationState();
}

class _BaseNavigationState extends State<BaseNavigation> {
  int currentIndex = 0;
  String appBarTitle = TOP_BAR_TITLES[0];

  Widget getSelectedTab() {
    switch (currentIndex) {
      case 0:
        return HotelDashboard();
      case 1:
        return FavouriteItems();
      case 2:
        return UserSettings();
      default:
        {
          FirebaseAuth.instance.signOut();
          Navigator.pop(context);
          break;
        }
    }
  }

  void updateIndex(int index) {
    if (index >= 3) {
      FirebaseAuth.instance.signOut();
      Navigator.pop(context);
    } else {
      setState(() {
        print(index);
        currentIndex = index;
        if (index < 3) appBarTitle = TOP_BAR_TITLES[index];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(kLightBlue),
          centerTitle: true,
          title: Text(appBarTitle),
        ),
        bottomNavigationBar:
            NavigationBar(selectedIndex: currentIndex, onTap: updateIndex),
        backgroundColor: Colors.white,
        body: getSelectedTab());
  }
}
