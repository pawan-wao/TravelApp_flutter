import 'dart:ui';
import 'package:flutter/material.dart';

class ExploreMoreData{
  static List<More> more =[
   More(name: 'Balloning', image: 'assets/images/balloning.png', color: Colors.pinkAccent),
    More(name: 'Hiking', image: 'assets/images/hiking.png', color: Colors.lightGreenAccent),
    More(name: 'Boating', image: 'assets/images/kayaking.png', color: Colors.deepPurpleAccent),
    More(name: 'snorkling', image: 'assets/images/snorkling.png', color: Colors.yellow),
    More(name: 'Balloning', image: 'assets/images/balloning.png', color: Colors.pinkAccent),
    More(name: 'Hiking', image: 'assets/images/hiking.png', color: Colors.lightGreenAccent),
    More(name: 'Boating', image: 'assets/images/kayaking.png', color: Colors.deepPurpleAccent),
    More(name: 'snorkling', image: 'assets/images/snorkling.png', color: Colors.yellow),


  ];
  static List<More> splash =[
    More(name: 'Trips', subText: 'Mountain', desc: 'Gives you a taste of the Canada \nmountains, from horeshow Bat in \nthe north of Vancouver to Pemberton.' , image: 'assets/images/welcome-one.png', color: Colors.pinkAccent),
    More(name: 'Trips', subText: 'Mountain' , desc: 'Gives you a taste of the Canada \nmountains, from horeshow Bat in \nthe north of Vancouver to Pemberton.' ,image: 'assets/images/welcome-two.png', color: Colors.lightGreenAccent),
    More(name: 'Trips', subText: 'Mountain',desc: 'Gives you a taste of the Canada \nmountains, from horeshow Bat in \nthe north of Vancouver to Pemberton.',  image: 'assets/images/welcome-three.png', color: Colors.deepPurpleAccent),

  ];
}

class More{
  String name;
  String image;
  Color color;
  String desc;
  String subText;


  More({required this.name, required this.image, required this.color,  this.desc='Loading...', this.subText='Loading...'});
}