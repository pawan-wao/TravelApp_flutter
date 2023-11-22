import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:travel_app/splash_Screen.dart';
import 'ModelData.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:travel_app/explore_more_data.dart';
import 'package:toast/toast.dart';
import 'booking.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Toast.show(
                          "Coming soon!",
                          duration: Toast.lengthShort,
                          gravity: Toast.bottom,
                        );
                      },
                      child: Icon(
                        Icons.menu_rounded,
                      )),
                  Spacer(),
                  Container(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://img.freepik.com/premium-photo/woman-black-jacket-blue-jeans-stands-against-white-wall_905510-4444.jpg?w=740',
                        fit: BoxFit.cover,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Discover",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Places',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Inspiration',
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Emotions',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                itemCount: ModelData.item.length,
                itemBuilder: (context, index, realindex) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => Booking(
                            key: UniqueKey(),
                            image: ModelData.item[index].image.toString(),
                            price: ModelData.item[index].price,
                            desc: ModelData.item[index].desc,
                            name: ModelData.item[index].name,
                            location: ModelData.item[index].location,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 230,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        child: ModelData.item[index].image != null &&
                                ModelData.item[index].image.isNotEmpty
                            ? CachedNetworkImage(
                                imageUrl:
                                    ModelData.item[index].image.toString(),
                                fit: BoxFit.cover,
                                height: double.infinity,
                                width: double.infinity,
                                placeholder: (context, url) => Text("Loading"),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              )
                            : Container(), // Empty container if image URL is null or empty
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                  height: 350,
                  pauseAutoPlayOnTouch: true,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text("Explore more",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.lightBlue),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Toast.show(
                    'Coming soon!',
                    gravity: Toast.bottom,
                    duration: Toast.lengthShort,
                  );
                },
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ExploreMoreData.more.length,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 30),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: Image.asset(
                                  ExploreMoreData.more[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text(
                                ExploreMoreData.more[index].name,
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 25,

        selectedItemColor: Colors.black,
        selectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, color: Colors.grey),
              label: 'Tab 1'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.train_style_two, color: Colors.grey),
              label: 'Tab 1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.grey), label: 'Tab 1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey), label: 'Tab 1'),
        ],
      ),
    );
  }
}
