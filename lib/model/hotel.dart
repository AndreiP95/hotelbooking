import 'package:hotelbooking/model/room.dart';

class Hotel {
  Hotel({this.id});

  final int id;
  final List<Room> rooms = [];

  void addRoom(Room room) {
    rooms.add(room);
  }
}
