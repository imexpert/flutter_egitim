import 'package:flutter/material.dart';
import 'package:flutter_egitimleri/Screen/etkin_listview.dart';
import 'Screen/ListeDersleri.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Dersleri",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.orange),
    home: Scaffold(
      appBar: AppBar(
          title: Text(
        "Listview Dersleri",
        style: TextStyle(color: Colors.white),
      )),
      body: EtkinListeOrnek(),
    ),
  ));
}
