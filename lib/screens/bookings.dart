import 'package:flutter/material.dart';
import './model.dart';

class Booking extends StatelessWidget {
  final List item = [
    'assets/bookings/yatra.png',
    'assets/bookings/triv.png',
    'assets/bookings/tripad.png',
    'assets/bookings/trip.png',
    'assets/bookings/thomas.png',
    'assets/bookings/show.png',
    'assets/bookings/redbus.png',
    'assets/bookings/oyo.png',
    'assets/bookings/ixi.png',
    'assets/bookings/happy.png',
    'assets/bookings/goibi.png',
    'assets/bookings/ease.png',
    'assets/bookings/clr.jpeg',
    'assets/bookings/ola.jpg',
    'assets/bookings/zoom-car.jpg',
    'assets/bookings/uberc.jpg',
    'assets/bookings/air.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Bookings',
          style: TextStyle(
              fontFamily: 'Poppins', color: Colors.black, fontSize: 18),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            children: <Widget>[
              Model(
                image: item[0],
                url: 'https://www.yatra.com/',
              ),
              Model(
                image: item[1],
                url: 'https://www.trivago.in/',
              ),
              Model(
                image: item[2],
                url: 'https://www.tripadvisor.in/',
              ),
              Model(
                image: item[3],
                url: 'https://www.makemytrip.com/',
              ),
              Model(
                image: item[4],
                url: 'https://www.thomascook.in/',
              ),
              Model(
                image: item[5],
                url: 'https://in.bookmyshow.com/',
              ),
              Model(
                image: item[6],
                url: 'https://www.redbus.in/',
              ),
              Model(
                image: item[7],
                url: 'https://www.oyorooms.com/',
              ),
              Model(
                image: item[8],
                url: 'https://www.ixigo.com/',
              ),
              Model(
                image: item[9],
                url: 'https://www.happyeasygo.com/',
              ),
              Model(
                image: item[10],
                url: 'https://www.goibibo.com/',
              ),
              Model(
                image: item[11],
                url: 'https://www.easemytrip.com/',
              ),
              Model(
                image: item[12],
                url: 'https://www.cleartrip.com/',
              ),
              Model(
                image: item[13],
                url: 'https://www.olacabs.com/',
              ),
              Model(
                image: item[14],
                url: 'https://www.zoomcar.com/',
              ),
              Model(
                image: item[15],
                url: 'https://www.uber.com/in/en/',
              ),
              Model(
                image: item[16],
                url: 'https://www.airbnb.co.in/',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
