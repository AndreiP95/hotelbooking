import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelbooking/utils/constants.dart';

class HotelDashboard extends StatelessWidget {
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
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: RaisedButton(
                  child: Text(
                    'Vino la mine',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  color: Color(kDarkBlue),
                  onPressed: () {
                    print('Am fost apasat');
                  },
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
}
