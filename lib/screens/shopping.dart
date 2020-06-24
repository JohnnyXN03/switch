import 'package:flutter/material.dart';
import './model.dart';

class Shop extends StatelessWidget {
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
          'Shopping',
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
                image: 'assets/amazon.png',
                url: 'https://www.amazon.in/',
              ),
              Model(
                image: 'assets/ajio.png',
                url: 'https://www.ajio.com/',
              ),
              Model(
                image: 'assets/flipkart.jpg',
                url: 'https://www.flipkart.com/',
              ),
              Model(
                image: 'assets/bewkoof.jpg',
                url: 'https://www.bewakoof.com/',
              ),
              Model(
                image: 'assets/biba.png',
                url: 'https://www.biba.in/',
              ),
              Model(
                image: 'assets/coolwinks.png',
                url: 'https://www.coolwinks.com/',
              ),
              Model(
                image: 'assets/decatha.png',
                url: 'https://www.decathlon.in/',
              ),
              Model(
                image: 'assets/ebay.png',
                url: 'https://www.ebay.com/',
              ),
              Model(
                image: 'assets/koovs.jpeg',
                url: 'https://www.koovs.com/',
              ),
              Model(
                image: 'assets/lenskart.png',
                url: 'https://www.lenskart.com/',
              ),
              Model(
                image: 'assets/limeroad.png',
                url: 'https://www.limeroad.com/',
              ),
              Model(
                image: 'assets/max.png',
                url: 'https://www.maxfashion.in/in/en/',
              ),
              Model(
                image: 'assets/Myntra.png',
                url: 'https://www.myntra.com/',
              ),
              Model(
                image: 'assets/nyka.png',
                url: 'https://www.nykaa.com/',
              ),
              Model(
                image: 'assets/pepperfry.jpg',
                url: 'https://www.pepperfry.com/',
              ),
              Model(
                image: 'assets/shein.jpg',
                url: 'https://www.shein.in/',
              ),
              Model(
                image: 'assets/shoperstop.jpg',
                url: 'https://www.shoppersstop.com/',
              ),
              Model(
                image: 'assets/snapdeal.png',
                url: 'https://www.snapdeal.com/',
              ),
              Model(
                image: 'assets/tata.png',
                url: 'https://www.tatacliq.com/',
              ),
              Model(
                image: 'assets/bf.png',
                url: 'https://www.brandfactoryonline.com/',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
