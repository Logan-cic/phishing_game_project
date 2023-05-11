import "package:carousel_slider/carousel_controller.dart";
import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";

import "package:flutter/material.dart";
import "package:carousel_slider/carousel_slider.dart";

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  
  List<Image> images = [
    Image.asset("images/card1.png"),
    Image.asset("images/card3.png"),
    Image.asset("images/CARD4.png"),
    Image.asset("images/CARD5.png"),
    Image.asset("images/CARD6.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CARDS"),
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(height: 400.0),
          items: images.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: image,
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}