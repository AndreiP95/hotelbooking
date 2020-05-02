import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelbooking/ui/widgets/base_button.dart';
import 'package:hotelbooking/ui/widgets/search_text_field.dart';
import 'package:hotelbooking/utils/constants.dart';

class SearchHotels extends StatefulWidget {
  @override
  _SearchHotelsState createState() => _SearchHotelsState();
}

class _SearchHotelsState extends State<SearchHotels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Image(
                  height: 320,
                  width: double.infinity,
                  image: NetworkImage('https://i.imgur.com/edS1lAw.jpg'),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                'Salut Costel',
                style: titleStyle,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Search for your favourite destination',
                style: descriptionStyle,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2)),
                  child: Column(
                    children: <Widget>[
                      SearchTextField(hint: 'Enter your location'),
                      SearchTextField(hint: 'Choose dates'),
                      SearchTextField(hint: ' Number of people'),
                    ],
                  ),
                ),
              ),
              BaseButton(
                  color: Color(kLightBlue), text: 'Search', function: search),
            ],
          ),
        ],
      ),
    );
  }

  void search() {
    Navigator.pushNamed(context, kHotelsDashboard);
  }
}
