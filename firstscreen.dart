import 'package:custom/secondpage.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondPage()),
        );
      },
      child: Container(
        child: Text('Go to secondpage of the device'),
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        // style: TextStyle(color: Colors.cyan),
        // color: Colors.white,
      ),
    );
  }
}
