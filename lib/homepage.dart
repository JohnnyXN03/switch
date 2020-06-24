import 'package:box/screens/bookings.dart';
import 'package:box/screens/buysell.dart';
import 'package:box/screens/food.dart';
import 'package:box/screens/health.dart';
import 'package:box/screens/info.dart';
import 'package:box/screens/shopping.dart';
import 'package:flutter/material.dart';

import 'package:firebase_admob/firebase_admob.dart';

const String testDevice = '306F8DA9F64BF10C86621FC7EEC2B21F';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static final MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: <String>[testDevice],
    nonPersonalizedAds: true,
    keywords: <String>['Shopping', 'Food', 'Travel', 'Movies'],
  );
  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;
  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: 'ca-app-pub-9888159756382296/3498179813',
        size: AdSize.smartBanner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print('BannerAd $event');
        });
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
        adUnitId: 'ca-app-pub-9888159756382296/2697369507',
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print('InterstitialAd $event');
        });
  }

  @override
  void initState() {
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-9888159756382296~2568241521');

    _bannerAd = createBannerAd()
      ..load()
      ..show();

    super.initState();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    _interstitialAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 1,
        title: Text(
          'Easy Switch',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins',
              fontSize: 21,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              color: Color(0xFF1F2F6),
              alignment: Alignment.bottomCenter,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Select a category',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(
              child: Center(
                child: GridView(
                  padding: EdgeInsets.all(30),
                  //shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Shop()));
                      },
                      child: Card(
                          color: Color(0XFF44BD32),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28)),
                          elevation: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                                size: 40,
                              ),
                              Container(
                                child: Text(
                                  'Shopping',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Food()));
                      },
                      child: Card(
                          color: Color(0XFFFF4757),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28)),
                          elevation: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.fastfood,
                                color: Colors.white,
                                size: 38,
                              ),
                              Container(
                                child: Text(
                                  'Food',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Buy()));
                      },
                      child: Card(
                          color: Color(0XFFF6B93B),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28)),
                          elevation: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.store_mall_directory,
                                color: Colors.white,
                                size: 38,
                              ),
                              Container(
                                child: Text(
                                  'Buy and Sell',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Info()));
                      },
                      child: Card(
                          color: Color(0XFF2980B9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28)),
                          elevation: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.laptop_chromebook,
                                color: Colors.white,
                                size: 38,
                              ),
                              Container(
                                child: Text(
                                  'Information',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Health()));
                      },
                      child: Card(
                          color: Color(0XFFFF6B81),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28)),
                          elevation: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 38,
                              ),
                              Container(
                                child: Text(
                                  'Health',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Booking()));
                      },
                      child: Card(
                          color: Color(0XFFFD9644),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28)),
                          elevation: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.flight,
                                color: Colors.white,
                                size: 38,
                              ),
                              Container(
                                child: Text(
                                  'Bookings',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
