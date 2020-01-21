import 'package:flutter/material.dart';
import 'package:ShopApp/pages/home.dart';
import 'package:ShopApp/pages/login.dart';
void main() {
  runApp(new MaterialApp(
    home: Login(),
    title: "ShopApp",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.red.shade900
    ),
  ));
}

