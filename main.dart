// import 'dart:html';

import 'package:flutter/material.dart';
import 'customappbar.dart';
import 'drawer.dart';
import 'firstscreen.dart';
import 'secondscreen.dart';
import 'thirdscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  // get child => child;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          height: 500,
        ),
        drawer: MyDrawer(),
        body: Center(
          child: TabBarView(
            children: <Widget>[
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
