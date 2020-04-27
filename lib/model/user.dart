import 'package:hotelbooking/model/booking.dart';

class User {

  User({this.id, this.email, this.phone,this.nickname});

  final int id;
  final String email;
  final String nickname;
  final List<Booking> bookings = [];
  final String phone;

  void addBooking(Booking booking) {
    bookings.add(booking);
  }

}