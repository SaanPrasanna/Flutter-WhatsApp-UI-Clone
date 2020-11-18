import 'package:flutter/material.dart';
import 'package:popupmenu/models/fake_data_model.dart';
import 'package:popupmenu/screen/widgets/chat_page.dart';

class Messagelist extends StatefulWidget {
  @override
  _MessagelistState createState() => _MessagelistState();
}

class _MessagelistState extends State<Messagelist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
      child: ListView.builder(
        itemCount: fakeData.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                new ListTile(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new ChatPage(
                              name: fakeData[index].name,
                              avatar: fakeData[index].avatar,
                            )));
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(fakeData[index].avatar),
                    radius: 30,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(fakeData[index].name),
                      Column(
                        children: [
                          //Showing the Time
                          Text(
                            fakeData[index].time,
                            style: TextStyle(
                                color: fakeData[index].newMessages != 0
                                    ? Colors.green
                                    : Colors.grey),
                          ),
                          fakeData[index].newMessages != 0
                              ? CircleAvatar(
                                  child: Text(
                                    fakeData[index].newMessages.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  radius: 12.0,
                                  backgroundColor: Colors.green,
                                )
                              : Text("")
                        ],
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      fakeData[index].lastSeen == true
                          ? Icon(
                              Icons.done_all,
                              color: Colors.blue[300],
                              size: 18,
                            )
                          : Text(""),
                      Text(fakeData[index].lastMessage)
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
