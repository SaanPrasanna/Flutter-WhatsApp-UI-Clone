import 'package:flutter/material.dart';
import 'package:popupmenu/models/fake_call_data.dart';
import 'package:popupmenu/theme/constants.dart';

class CallPage extends StatefulWidget {
  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
      child: ListView.builder(
        itemCount: fakeCallData.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                new ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(fakeCallData[index].avatar),
                    radius: 30,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(fakeCallData[index].name),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.call,color: kPrimaryColor,),
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      fakeCallData[index].received == true
                          ? Icon(Icons.call_received,color: Colors.red,)
                          : Icon(Icons.call_made, color: kPrimaryColor,),
                      Text(
                          "${fakeCallData[index].count} ${fakeCallData[index].date}, ${fakeCallData[index].time}"),
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
