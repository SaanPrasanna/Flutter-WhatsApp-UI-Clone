import 'package:flutter/foundation.dart';

class FakeDataModel {
  FakeDataModel({
    @required this.name,
    @required this.lastMessage,
    @required this.time,
    @required this.newMessages,
    @required this.avatar,
    @required this.lastSeen,
  });

  final String name;
  final String lastMessage;
  final String time;
  final String avatar;
  final int newMessages;
  final bool lastSeen;
}

List<FakeDataModel> fakeData = [
  new FakeDataModel(
    name: "Nimesh Sandaruwan",
    lastMessage: "Hey, Are you there!",
    time: "1:03 PM",
    newMessages: 0,
    avatar:
        "https://www.coolgenerator.com/Pic/Face//male/male20151086228780304.jpg",
    lastSeen: true,
  ),
  new FakeDataModel(
    name: "Ayesha Sandamali",
    lastMessage: "Hey, Are you there!",
    time: "1:03 PM",
    newMessages: 1,
    avatar:
        "https://www.coolgenerator.com/Pic/Face//female/female20171025986972106.jpg",
    lastSeen: false,
  ),
  new FakeDataModel(
    name: "Aravinda Perera",
    lastMessage: "Hey, Are you there!",
    time: "1:03 PM",
    newMessages: 3,
    avatar:
        "https://www.coolgenerator.com/Pic/Face//male/male1084911199433.jpg",
    lastSeen: false,
  ),
  new FakeDataModel(
    name: "Nirasha Sandamali",
    lastMessage: "Hey, Are you there!",
    time: "1:03 PM",
    newMessages: 10,
    avatar:
        "https://www.coolgenerator.com/Pic/Face//female/female1023193986206.jpg",
    lastSeen: false,
  ),
  new FakeDataModel(
    name: "Kasun Gamage",
    lastMessage: "Hey, Are you there!",
    time: "1:03 PM",
    newMessages: 0,
    avatar:
        "https://www.coolgenerator.com/Pic/Face//male/male20171086722889709.jpg",
    lastSeen: true,
  ),
  new FakeDataModel(
    name: "Prasanna",
    lastMessage: "Hey, Are you there!",
    time: "1:03 PM",
    newMessages: 0,
    avatar:
        "https://www.coolgenerator.com/Pic/Face//male/male1084450338928.jpg",
    lastSeen: true,
  ),
  new FakeDataModel(
    name: "Kusum",
    lastMessage: "Hey, Are you there!",
    time: "1:03 PM",
    newMessages: 0,
    avatar:
        "https://www.coolgenerator.com/Pic/Face//female/female20151024175948791.jpg",
    lastSeen: true,
  ),
  new FakeDataModel(
    name: "Mahesh Lakmal",
    lastMessage: "Hey, Are you there!",
    time: "1:03 PM",
    newMessages: 0,
    avatar:
        "https://www.coolgenerator.com/Pic/Face//female/female20151024256198822.jpg",
    lastSeen: true,
  ),
];
