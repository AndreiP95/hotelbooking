import 'package:hotelbooking/model/room.dart';

class Hotel {
  Hotel({this.id, this.description, this.longitude, this.latitude, this.title});

  final int id;
  final double latitude;
  final double longitude;
  final String title;
  final String description;
  final List<Room> rooms = [];

  void addRoom(Room room) {
    rooms.add(room);
  }
}
