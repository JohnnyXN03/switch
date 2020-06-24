import 'package:flutter/material.dart';
import './model.dart';

class Info extends StatelessWidget {
  final List item = [
    'assets/info/360.png',
    'assets/info/cnet.png',
    'assets/info/discovery.png',
    'assets/info/good.jpg',
    'assets/info/gsm.png',
    'assets/info/history.jpg',
    'assets/info/imdb.jpeg',
    'assets/info/Just.png',
    'assets/info/nat.jpg',
    'assets/info/pin.png',
    'assets/info/qora.png',
    'assets/info/verge.png',
    'assets/info/blog.png',
    'assets/info/cric.png',
    'assets/info/dic.png',
    'assets/info/ecrick.png',
    'assets/info/espn.png',
    'assets/info/images.png',
    'assets/info/inida.png',
    'assets/info/redit.png',
    'assets/info/stack.png',
    'assets/info/wiki.png',
  ];
  final List item2 = [
    'https://gadgets.ndtv.com/',
    'https://www.cnet.com/',
    'https://www.discovery.com/',
    'https://www.goodreads.com/',
    'https://www.gsmarena.com/',
    'https://www.history.com/',
    'https://www.imdb.com/',
    'https://www.justdial.com/',
    'https://www.nationalgeographic.com/',
    'https://in.pinterest.com/',
    'https://www.quora.com/',
    'https://www.theverge.com/',
    'https://www.blogger.com/about/?bpli=1',
    'https://www.cricbuzz.com/',
    'https://www.dictionary.com/',
    'https://www.espncricinfo.com/',
    'https://www.espn.in/',
    'https://timesofindia.indiatimes.com/',
    'https://www.indiatoday.in/',
    'https://www.reddit.com/',
    'https://stackoverflow.com/',
    'https://www.wikipedia.org/',
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
          'Information',
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
                url: item2[0],
              ),
              Model(
                image: item[1],
                url: item2[1],
              ),
              Model(
                image: item[2],
                url: item2[2],
              ),
              Model(
                image: item[3],
                url: item2[3],
              ),
              Model(
                image: item[4],
                url: item2[4],
              ),
              Model(
                image: item[5],
                url: item2[5],
              ),
              Model(
                image: item[6],
                url: item2[6],
              ),
              Model(
                image: item[7],
                url: item2[7],
              ),
              Model(
                image: item[8],
                url: item2[8],
              ),
              Model(
                image: item[9],
                url: item2[9],
              ),
              Model(
                image: item[10],
                url: item2[10],
              ),
              Model(
                image: item[11],
                url: item2[11],
              ),
              Model(
                image: item[12],
                url: item2[12],
              ),
              Model(
                image: item[13],
                url: item2[13],
              ),
              Model(
                image: item[14],
                url: item2[14],
              ),
              Model(
                image: item[15],
                url: item2[15],
              ),
              Model(
                image: item[16],
                url: item2[16],
              ),
              Model(
                image: item[17],
                url: item2[17],
              ),
              Model(
                image: item[18],
                url: item2[18],
              ),
              Model(
                image: item[19],
                url: item2[19],
              ),
              Model(
                image: item[20],
                url: item2[20],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
