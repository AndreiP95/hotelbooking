import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelbooking/ui/widgets/base_button.dart';
import 'package:hotelbooking/utils/constants.dart';

class DetailsScreen extends StatefulWidget {
  final String hotelName = 'Perla Galatiului';
  final String startDate = '28 Aug 2020';
  final String endDate = '30 Aug 2020';

  // DetailsScreen({this.hotelName, this.startDate, this.endDate});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  IconData iconData = Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(kLightBlue),
        title: Text(
          widget.hotelName,
          style: titleStyle.copyWith(color: Colors.white),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: addToFavourites,
            child: Icon(
              iconData,
              size: 30,
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: hotelDetails(),
    );
  }

  void addToFavourites() {
    if (iconData == Icons.favorite_border)
      iconData = Icons.favorite;
    else
      iconData = Icons.favorite_border;
    setState(() {});
  }

  Widget hotelDetails() {
    return ListView(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text('Nice hotel', style: titleStyle)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: <Widget>[
                  createDefaultStar(),
                  createDefaultStar(),
                  createDefaultStar(),
                  createDefaultStar(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Ceva descriere sa para mult Ceva descriere sa para mult Ceva descriere sa para mult Ceva descriere sa para mult Ceva descriere sa para mult Ceva descriere sa para mult Ceva descriere sa para mult Ceva descriere sa para mult Ceva descriere sa para mult Ceva descriere sa para mult Ceva descriere sa para mult Ceva descriere sa para mult Ceva descriere sa para mult Ceva descriere sa para mult ',
                style: descriptionStyle,
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: BaseButton(
              color: Color(kLightBlue),
              text: 'Select your room',
              function: goToReservation),
        )
      ],
    );
  }

  Widget createDefaultStar() {
    return Icon(
      Icons.star,
      size: 20,
      color: Color(kYellow),
    );
  }

  void goToReservation() {
    Navigator.pushNamed(context, kReservationRoute);
  }
}
