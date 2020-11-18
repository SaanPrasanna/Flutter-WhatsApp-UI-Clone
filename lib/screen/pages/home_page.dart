import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popupmenu/screen/widgets/call_list.dart';
import '../widgets/message_list.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, @required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                  child: const Text('New group'), value: '1'),
              new PopupMenuItem<String>(
                  child: const Text('New broadcast'), value: '2'),
              new PopupMenuItem<String>(
                  child: const Text('Whatsapp web'), value: '3'),
              new PopupMenuItem<String>(
                  child: const Text('Starred messages'), value: '4'),
              new PopupMenuItem<String>(
                  child: const Text('Settings'), value: '5'),
            ],
        onSelected: (String value) => alert(value));
    return new Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          labelStyle: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500),
          labelColor: Colors.white,
          tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
              child: Text("STATUS"),
            ),
            Tab(
              child: Text("CALLS"),
            ),
          ],
        ),
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          InkWell(
            child: button,
            onTap: () {
              dynamic state = _menuKey.currentState;
              state.showButtonMenu();
            },
          )
        ],
      ),
      body: TabBarView(
        children: [
          Text(""),
          Messagelist(),
          Messagelist(),
          CallPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.message,color: Colors.white,),
        backgroundColor: Colors.greenAccent[700],
      ),
    );
  }
}

// Divider(
//   color: Colors.grey,
// )
