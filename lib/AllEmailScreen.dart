import 'package:flutter/material.dart';

class AllEmailScreen extends StatefulWidget {

  final int value1;
  final String value2;

  AllEmailScreen({this.value1, this.value2});

  @override
  AllEmailScreenState createState() => AllEmailScreenState();
}

class AllEmailScreenState extends State<AllEmailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All Email'),),
      body: Container(
        child: Center(
          child: Text('all count ' + widget.value1.toString(),
              style: TextStyle(fontSize: 22.0,
                  fontFamily: 'roboto')),
        ),
      ),
    );
  }
}
