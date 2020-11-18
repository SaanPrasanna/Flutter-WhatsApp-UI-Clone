import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key key, @required this.name, @required this.avatar})
      : super(key: key);
  final String name;
  final String avatar;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final GlobalKey _menuKey = new GlobalKey();
  void alert(String title) {
    showDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: new Text(title),
              content: new Text("is selected value"),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: Text("Ok"),
                  onPressed: () => Navigator.of(context).pop(),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    final button = new PopupMenuButton(
        key: _menuKey,
        itemBuilder: (_) => <PopupMenuItem<String>>[
              new PopupMenuItem<String>(
                  child: const Text('View contact'), value: '1'),
              new PopupMenuItem<String>(
                  child: const Text('Media, links, and docs'), value: '2'),
              new PopupMenuItem<String>(
                  child: const Text('Search'), value: '3'),
              new PopupMenuItem<String>(
                  child: const Text('Mute notifications'), value: '4'),
              new PopupMenuItem<String>(
                  child: const Text('Wallpaper'), value: '5'),
              new PopupMenuItem<String>(
                  child: const Text('More'), value: '5'),
            ],
        onSelected: (String value) => alert(value));
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.name),
            Text(
              "online",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        actions: [
          Row(
            children: [
              Icon(Icons.video_call),
              SizedBox(width: 10.0),
              Icon(Icons.call),
            ],
          ),
          // SizedBox(width: 5.0),
          InkWell(
            child: button,
            onTap: () {
              dynamic state = _menuKey.currentState;
              state.showButtonMenu();
            },
          )
        ],
      ),
      body: Container(
        child: Text(""),
      ),
    );
  }
}
