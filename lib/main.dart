import 'package:box/screens/bookings.dart';
import 'package:box/screens/buysell.dart';
import 'package:box/screens/food.dart';
import 'package:box/screens/health.dart';
import 'package:box/screens/info.dart';
import 'package:box/screens/shopping.dart';
import 'package:box/screens/web.dart';
import 'package:flutter/material.dart';
import './homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        '/first': (context) => Shop(),
        '/second': (context) => Web(null),
        '/third': (context) => Food(),
        '/forth': (context) => Buy(),
        '/fifth': (context) => Booking(),
        '/six': (context) => Health(),
        '/final': (context) => Info(),
      },
    );
  }
}
