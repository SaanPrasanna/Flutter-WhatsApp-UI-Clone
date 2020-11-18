import 'package:flutter/foundation.dart';

class FakeCallsModel {
  FakeCallsModel({
    @required this.name,
    @required this.date,
    @required this.time,
    @required this.count,
    @required this.avatar,
    @required this.received,
  });

  final String name;
  final String date;
  final String time;
  final int count;
  final String avatar;
  final bool received;
}

List<FakeCallsModel> fakeCallData = [
  new FakeCallsModel(
    name: "Nimesh Sandaruwan",
    date: "November 15",
    time: "1:03 PM",
    count: 0,
    avatar:
        "https://www.coolgenerator.com/Pic/Face//male/male20151086228780304.jpg",
    received: true,
  ),
  new FakeCallsModel(
    name: "Ayesha Sandamali",
    date: "November 15",
    time: "1:03 PM",
    count: 1,
    avatar:
        "https://www.coolgenerator.com/Pic/Face//female/female20171025986972106.jpg",
    received: true,
  ),
  new FakeCallsModel(
    name: "Aravinda Perera",
    date: "November 15",
    time: "1:03 PM",
    count: 3,
    avatar:
        "https://www.coolgenerator.com/Pic/Face//male/male1084911199433.jpg",
    received: false,
  ),
  new FakeCallsModel(
    name: "Nirasha Sandamali",
    date: "November 15",
    time: "1:03 PM",
    count: 10,
    avatar:
        "https://www.coolgenerator.com/Pic/Face//female/female1023193986206.jpg",
    received: false,
  ),
  new FakeCallsModel(
    name: "Kasun Gamage",
    date: "Hey, Are you there!",
    time: "1:03 PM",
    count: 0,
    avatar:
        "https://www.coolgenerator.com/Pic/Face//male/male20171086722889709.jpg",
    received: true,
  ),
];
