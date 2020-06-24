import 'package:flutter/material.dart';
import './web.dart';

class Model extends StatelessWidget {
  final String title;
  final String image;

  final String url;
  Model({this.title, this.image, this.url});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => Web(url)));
        },
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          color: Colors.white,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
