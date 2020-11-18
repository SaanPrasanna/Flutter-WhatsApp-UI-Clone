import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screen/pages/home_page.dart';
import 'theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData(context),
      home: DefaultTabController(
        length: 4,
        child: MyHomePage(
          title: "Whatsapp",
        ),
      ),
    );
  }
}
