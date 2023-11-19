import 'package:flutter/material.dart';
import 'dart:ui';

class ModelData{
static List<Item> item = [
  Item(location: 'Nepal/Tibet, Asia',desc: 'Mount Everest is the highest mountain in the world, located in the Himalayas in Nepal and Tibet. It stands at 29,032 feet (8,849 meters) above sea level. This majestic peak is a challenge and dream for many adventurers and climbers worldwide.',name: 'Mount Everest', price: '1276', image: 'https://img.freepik.com/free-photo/view-spectacular-nature-landscape_23-2150763650.jpg?t=st=1700301898~exp=1700305498~hmac=9f1fd8be483196c2e24e0a7645963687d1a8a6228e4037619491a06f50de8ada&w=360'),
  Item( location: 'Pakistan/China, Asia',desc: 'K2, also known as Mount Godwin-Austen, is the second-highest mountain globally, situated in the Karakoram Range between Pakistan and China. Standing at 28,251 feet (8,611 meters), K2 is known for its challenging and perilous climbing routes.',name: 'K2 Mount Godwin-Austen',price:'2276' , image: 'https://img.freepik.com/free-photo/river-rocks-highlands-scotland_53876-94785.jpg?w=360&t=st=1700301747~exp=1700302347~hmac=e6f80c00f9be94a4d21f05b29f42fb87a676d9df82a083bda3060b45bafb168e'),
  Item(location: 'Tanzania, Africa',desc: 'Mount Kilimanjaro is Africa\'s tallest peak, located in Tanzania. Rising approximately 19,341 feet (5,895 meters) above sea level, it is a dormant volcano and a popular destination for trekkers and climbers seeking an unforgettable experience.',name: 'Mount Kilimanjaro',price: '1546', image: 'https://img.freepik.com/free-photo/valley-track-with-view-mount-cook-new-zealand_181624-14742.jpg?w=360&t=st=1700301727~exp=1700302327~hmac=fda25735aa4b7835e0b5f858e90594cac9a8b0d721ad4832b98c82cfd959e662'),
  Item(  location: 'Japan, Asia',desc: 'Mount Fuji, located in Japan, is an iconic volcanic peak standing at 12,389 feet (3,776 meters). Known for its symmetrical cone shape, it is a sacred symbol and a UNESCO World Heritage site attracting hikers and nature enthusiasts.',name: 'Mount Fuji',price:'1926' , image: 'https://img.freepik.com/free-photo/vertical-shot-rock-grassy-hill-with-mountains_181624-13951.jpg?w=360&t=st=1700301773~exp=1700302373~hmac=ffa70bb87fbaa680854a92b97aac4b1419dc6b9faa7ad110287d7aa29a4720e7'),
  Item( location: 'Alaska, North America',desc: 'Mount McKinley, also known as Denali, is the highest peak in North America. Located in Alaska, it reaches an elevation of 20,310 feet (6,190 meters), offering breathtaking views and a thrilling climb for experienced mountaineers.',name: 'Mount McKinley', price: '1676', image: 'https://img.freepik.com/premium-photo/sunset-mountains_608238-147.jpg?w=360'),

];
}
class Item {
  String image;
  String? name;
  String? desc;
 String? price;
 String? location;
  Item({required this.image, this.name, this.desc, this.price, this.location});
}