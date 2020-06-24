import 'package:flutter/material.dart';
import './model.dart';

class Food extends StatelessWidget {
  final List item = [
    'assets/food/big.png',
    'assets/food/zomato.png',
    'assets/food/uber.png',
    'assets/food/swigy.png',
    'assets/food/pizza.png',
    'assets/food/kfc.png',
    'assets/food/groofer.png',
    'assets/food/faaos.png',
    'assets/food/subway.jpg',
    'assets/food/dunzo.jpg',
    'assets/food/domino.png',
    'assets/food/dmart.jpg',
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
          'Food',
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
                url: 'https://www.bigbasket.com/',
              ),
              Model(
                image: item[1],
                url: 'https://www.zomato.com/india',
              ),
              Model(
                image: item[2],
                url: 'https://www.ubereats.com/',
              ),
              Model(
                image: item[3],
                url: 'https://www.swiggy.com/',
              ),
              Model(
                image: item[4],
                url: 'https://www.pizzahut.co.in/',
              ),
              Model(
                image: item[5],
                url: 'https://online.kfc.co.in/home',
              ),
              Model(
                image: item[6],
                url: 'https://grofers.com/',
              ),
              Model(
                image: item[7],
                url: 'https://order.faasos.io/',
              ),
              Model(
                image: item[8],
                url: 'https://www.subway.com/en-in',
              ),
              Model(
                image: item[9],
                url: 'https://www.dunzo.com/',
              ),
              Model(
                image: item[10],
                url: 'https://www.dominos.co.in/',
              ),
              Model(
                image: item[11],
                url: 'https://www.dmart.in/',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
