import 'package:flutter/material.dart';
import './model.dart';

class Buy extends StatelessWidget {
  final List item = [
    'assets/buysell/index.png',
    'assets/buysell/quick.jpg',
    'assets/buysell/droom.png',
    'assets/buysell/cardekh.png',
    'assets/buysell/car.png',
    'assets/buysell/bikedekh.jpg',
    'assets/buysell/bike.jpg',
    'assets/buysell/2gud.png',
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
          'Buy and Sell',
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
                url: 'https://www.olx.in/',
              ),
              Model(
                image: item[1],
                url: 'https://www.quikr.com/',
              ),
              Model(
                image: item[2],
                url: 'https://droom.in/',
              ),
              Model(
                image: item[3],
                url: 'https://www.cardekho.com/',
              ),
              Model(
                image: item[4],
                url: 'https://www.carwale.com/',
              ),
              Model(
                image: item[5],
                url: 'https://www.bikedekho.com/',
              ),
              Model(
                image: item[6],
                url: 'https://www.bikewale.com/',
              ),
              Model(
                image: item[7],
                url: 'https://www.2gud.com/',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
