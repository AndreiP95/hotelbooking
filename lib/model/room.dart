import 'dart:html';

import 'package:hotelbooking/model/calendar_date.dart';

class Room {
  Room({this.id, this.type, this.description, this.price});

  final int id;
  final int type;
  final String description;
  final double price;
  final Map<CalendarDate, bool> availability = Map();

  double getPriceForNumberOfDays(int numberOfDays) {
    return numberOfDays * price;
  }

  // TODO -> Check dates ( might be remote )
  bool isAvailable(DateTime startDate, DateTime endDate) {
    while (startDate.millisecondsSinceEpoch < endDate.millisecondsSinceEpoch) {
      startDate.add(Duration(days: 1));
    }
    return true;
  }
}
