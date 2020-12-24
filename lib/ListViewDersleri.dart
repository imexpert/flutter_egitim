import 'package:flutter/material.dart';
import 'package:flutter_egitimleri/Screen/navigasyon_islemleri.dart';
import 'Screen/custom_scroll_ve_slivers.dart';
import 'Screen/etkin_listview.dart';
import 'Screen/ListeDersleri.dart';
import 'Screen/gridview_kullanimi.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Dersleri",
    debugShowCheckedModeBanner: false,
    initialRoute: 'CLogin',
    routes: {
      '/' : (context) => NavigasyonIslemleri(),
      '/CLogin' : (context) => LoginSayfasi()
    },
    onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(
      builder: (context) => LoginSayfasi()
    ),
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    //home: NavigasyonIslemleri()
  ));
}
