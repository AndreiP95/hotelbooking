import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const String kWelcomeScreenRoute = "WELCOME_SCREEN";
const String kRegistrationScreenRoute = "REGISTRATION_SCREEN";
const String kLoginScreenRoute = "LOGIN_SCREEN";
const String kHotelsDashboard = "HOTELS_DASHBOARD";


const String registerToBackend = 'register';

const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);


const kDarkBlue = 0xFF1761a0;
const kLightBlue = 0xFF2884d4;
const kYellow = 0xFFe6ba0e;


const kBaseUri = 'www.our-fun.com:9000';
const kUserUri = '/users';
const kUserLoginUri = '/login';
const kUserCsrfToken = '/csrf';