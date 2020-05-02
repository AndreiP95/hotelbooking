import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hotelbooking/utils/constants.dart';

class SearchTextField extends StatefulWidget {
  final String hint;

  SearchTextField({this.hint});

  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        onTap: showCurrentCoordinates,
        style: descriptionStyle,
        keyboardType: TextInputType.text,
        decoration: kSearchTextFieldDecoration.copyWith(hintText: widget.hint));
  }

  void showCurrentCoordinates() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.medium);

    print(position.latitude);
    print(position.longitude);
  }
}
