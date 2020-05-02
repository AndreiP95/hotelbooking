import 'package:hotelbooking/ui/screens/details_screen.dart';
import 'package:hotelbooking/ui/screens/main_navigation/base_navigation.dart';
import 'package:hotelbooking/ui/screens/search_screen.dart';
import 'package:hotelbooking/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hotelbooking/ui/screens/not_auth_navigation/welcome.dart';
import 'package:hotelbooking/ui/screens/not_auth_navigation/login.dart';
import 'package:hotelbooking/ui/screens/not_auth_navigation/registration.dart';

void main() => runApp(HotelBooking());

class HotelBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: kWelcomeScreenRoute,
      routes: {
        kRegistrationScreenRoute: (context) => RegistrationScreen(),
        kLoginScreenRoute: (context) => LoginScreen(),
        kWelcomeScreenRoute: (context) => WelcomeScreen(),
        kHotelsDashboard: (context) => BaseNavigation(),
        kSearchScreen : (context) => SearchHotels(),
        kDetailsScreen : (context) => DetailsScreen(),
      },
    );
  }
}
