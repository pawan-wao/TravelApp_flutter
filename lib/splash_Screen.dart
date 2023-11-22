import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/home_page.dart';
import 'explore_more_data.dart';
import 'main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
             CarouselSlider.builder(
                 itemCount: 3,
                 itemBuilder: (context, int index, int realindex){
                   return Container(
                     width: double.infinity,
                     height: double.infinity,
                     child: Stack(
                       children: [
                         Image.asset(ExploreMoreData.splash[index].image,
                         width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
                        Padding(
                          padding: const EdgeInsets.only(top: 150, left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // Main text
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(ExploreMoreData.splash[index].name,style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35,
                                      ),),
                                      Text(ExploreMoreData.splash[index].subText ,style: TextStyle(
                                        fontSize: 30, color: Color(0xFFababad),
                                      ),),
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: AnimatedSmoothIndicator(
                                      activeIndex: realindex,
                                      count: 3,
                                      effect: ExpandingDotsEffect(),
                                      axisDirection: Axis.vertical,

                                    ),
                                  ),
                                ],
                              ),
                              //Sub text
                              SizedBox(height: 5,),
                              //Text Body
                              Text(ExploreMoreData.splash[index].desc,style: TextStyle(
                                color: Color(0xFF878593),
                              ),softWrap: true,),
                              SizedBox(height: 30,),
                              ClipRRect
                                (
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(builder: (context) => HomePage()),
                                      );
                                    },
                                      child: Image.asset('assets/images/button.png',)),
                              ),
                            ],
                          ),
                        )
                       ],
                     ),
                   );
                 },
                 options: CarouselOptions(
                   height: MediaQuery.of( context).size.height,
                   scrollDirection: Axis.vertical,
                   enableInfiniteScroll: false,
                   enlargeCenterPage: true,
                   viewportFraction: 1.0,
                   //options here
                 ),
             ),
            ],
          ),
        ),
      );
  }
}