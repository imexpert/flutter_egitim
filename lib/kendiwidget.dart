import 'package:flutter/material.dart';

import 'Screen/ResimTurleri.dart';

void main()
{
  var widget = new SampleWidget();
  runApp(widget);
}
class SampleWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.orange,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            "Flutter Dersleri",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.alarm,
            size: 24.0,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        body: ResimTurleri(),
      ),
    );
  }
}

