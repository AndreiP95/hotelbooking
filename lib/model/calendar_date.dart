class CalendarDate {

  int day;
  int month;
  int year;

  CalendarDate({this.day, this.month, this.year});

  @override
  String toString() => '$day-$month-$year';

  
}