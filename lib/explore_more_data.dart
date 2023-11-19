import 'dart:ui';
import 'package:flutter/material.dart';

class ExploreMoreData{
  static List<More> more =[
   More(name: 'Balloning', image: 'assets/images/balloning.png', color: Colors.pinkAccent),
    More(name: 'Hiking', image: 'assets/images/hiking.png', color: Colors.lightGreenAccent),
    More(name: 'Boating', image: 'assets/images/kayaking.png', color: Colors.deepPurpleAccent),
    More(name: 'snorkling', image: 'assets/images/snorkling.png', color: Colors.yellow),

  ];
}

class More{
  String name;
  String image;
  Color color;


  More({required this.name, required this.image, required this.color});
}