import 'package:hotelbooking/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hotelbooking/ui/screens/welcome.dart';
import 'package:hotelbooking/ui/screens/login.dart';
import 'package:hotelbooking/ui/screens/registration.dart';

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
      },
    );
  }
}
