import 'package:flutter/material.dart';

class Markt {
  String bgImage;
  String icon;
  String name;
  String type;
  num score;
  num download;
  num review;
  String description;
  List<String> image;

  Markt(
      this.bgImage,
      this.icon,
      this.name,
      this.type,
      this.score,
      this.download,
      this.review,
      this.description,
      this.image
      );

  static List<Markt> markts(){
    return [
      Markt(
        'assets/images/lidl.png',
        'assets/images/lidl.png',
        'Lidl Super markt',
        'Adventure type',
        4.8,
        382,
        324,
        'Lidl is a supermarkt that we can find it in all europa',
        [
          'assets/images/lidl.png',
          'assets/images/frau.jpg',
        ],
      ),

      Markt(
        'assets/images/carrefour.jpg',
        'assets/images/avatar.png',
        'Lidl Super markt',
        'Adventure type',
        4.8,
        382,
        324,
        'Lidl is a supermarkt that we can find it in all europa',
        [
          'assets/images/avatar.png',
          'assets/images/frau.jpg',
        ],
      ),

      Markt(
        'assets/images/Leclerc.jpg',
        'assets/images/avatar.png',
        'Lidl Super markt',
        'Adventure type',
        4.8,
        382,
        324,
        'Lidl is a supermarkt that we can find it in all europa',
        [
          'assets/images/avatar.png',
          'assets/images/frau.jpg',
        ],
      ),

      Markt(
        'assets/images/aldi_sud.png',
        'assets/images/aldi_sud.png',
        'Aldi Super markt',
        'Adventure type',
        4.8,
        382,
        324,
        'Aldi is a very popular supermarkt that we can find it in all europa',
        [
          'assets/images/aldi.png',
          'assets/images/frau.jpg',
        ],
      ),
    ];
  }

}