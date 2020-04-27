import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelbooking/utils/constants.dart';

class HotelDashboard extends StatefulWidget {
  @override
  _HotelDashboardState createState() => _HotelDashboardState();
}

class _HotelDashboardState extends State<HotelDashboard> {
  IconData myLovelyIcon = Icons.favorite_border;
  bool favourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(kLightBlue),
        centerTitle: true,
        title: Text('Hotelurile mele'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: getListItems(),
      ),
    );
  }

  List<Widget> getListItems() {
    List<Widget> widgetList = [];
    for (int i = 0; i < 12; i++) {
      widgetList.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 0.5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: Image(
                  width: 90,
                  height: 90,
                  image: AssetImage('images/logo.png'),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 15, bottom: 6),
                    child: Row(
                      children: <Widget>[
                        Text('Nice hotel'),
                        createDefaultStar(),
                        createDefaultStar(),
                        createDefaultStar(),
                        createDefaultStar(),
                        createDefaultStar(),
                      ],
                    ),
                  ),
                  Text('Cel mai tare hotel'),
                  Text('Din lume'),
                  Text('Pe care l-ai vazut vreodata')
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: changeIcon,
                          child: Icon(
                            myLovelyIcon,
                            size: 30,
                            color: Color(kLightBlue),
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 32,
                          color: Color(kYellow),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Text('7.5', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Am fost apasat');
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 9, horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(kDarkBlue),
                        ),
                        child: Text(
                          'Vino la mine',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ));
    }
    return widgetList;
  }

  Widget createDefaultStar() {
    return Icon(
      Icons.star,
      size: 20,
      color: Color(kYellow),
    );
  }

  void changeIcon() {
    setState(() {
      myLovelyIcon = favourite ? Icons.favorite_border : Icons.favorite;
      favourite = !favourite;
    });
  }
}
