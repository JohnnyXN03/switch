import 'package:flutter/material.dart';
import './model.dart';

class Health extends StatelessWidget {
  final List item = [
    'assets/health/practo.jpg',
    'assets/health/pharm.jpg',
    'assets/health/netmed.jpg',
    'assets/health/medplus.png',
    'assets/health/medlife.png',
    'assets/health/hk.jpeg',
    'assets/health/1mg.png',
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
          'Health',
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
                url: 'https://www.practo.com/',
              ),
              Model(
                image: item[1],
                url: 'https://pharmeasy.in/',
              ),
              Model(
                image: item[2],
                url: 'https://www.netmeds.com/',
              ),
              Model(
                image: item[3],
                url: 'https://www.medplusmart.com/',
              ),
              Model(
                image: item[4],
                url: 'https://www.medlife.com/',
              ),
              Model(
                image: item[5],
                url: 'https://www.healthkart.com/',
              ),
              Model(
                image: item[6],
                url: 'https://www.1mg.com/',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
