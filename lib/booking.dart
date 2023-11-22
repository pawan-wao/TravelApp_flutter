import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/ModelData.dart';
import 'package:travel_app/home_page.dart';
import 'main.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:toast/toast.dart';

class Booking extends StatefulWidget{
  @override
  var image;
  var name;
  var desc;
  var price;
  var location;
  Booking({required key , required this.image, this.name, this.desc, this.price, this. location}) : assert(image!=null), super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {

 List<Color>  peopleColor = List.filled(5, Colors.lightBlueAccent[100]!);
 List<Color> textColor = List.filled(5, Colors.black);
  IconData heart = CupertinoIcons.heart;
   Color heartColor = Colors.grey;

  Widget build(BuildContext context){
    ToastContext().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.network(widget.image,fit: BoxFit.cover,),
          ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50,left: 10),
                  child: InkWell(
                       onTap: (){
                         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage())
                         );
                       },
                      child: Icon(CupertinoIcons.back,size: 25,color: Colors.white,)),
                )),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: MediaQuery.of(context).size.height*0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(35),
                      topLeft: Radius.circular(35)),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(widget.name, style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                              ),
                              ),
                              Spacer(),
                              Text('\$${widget.price}', style: TextStyle(
                                fontSize: 25, color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Icon(Icons.location_pin, color: Colors.deepPurpleAccent,size: 30,),
                              SizedBox(width: 15,),
                              Text(widget.location, style: TextStyle(fontSize: 17, color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.w500),),
                            ],
                          ),
                          SizedBox(height: 17,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RatingBar.builder(
                                initialRating: 3,
                                  unratedColor: Colors.grey,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 26,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 1),
                                  itemBuilder: (context, index) => Icon(Icons.star,
                                      color: Colors.yellow,),
                                  onRatingUpdate: (rating){
                                  print(rating);
                                  },),
                              SizedBox(width: 10,),
                              Text('(5.0)',style: TextStyle(color: Colors.grey,
                                  fontWeight:FontWeight.bold ),),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('People', style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 23,
                              ),),
                              Text('Number of people in your group', style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 15, color: Colors.grey,
                              ),),
                            ],
                          ),
                          SizedBox(height:10),
                          Container(
                            width: 400,
                            height: 40,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                                itemBuilder: (context, index){
                                return Padding(
                                  padding: const EdgeInsets.only(right: 10
                                  ),
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        peopleColor[index]= Colors.pinkAccent;
                                        textColor[index] = Colors.white;
                                      });
                                    },
                                    child: Container(
                                      height: 60,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: peopleColor[index],
                                        borderRadius: BorderRadius.all(Radius.circular(15))
                                      ),
                                      child: Center(child: Text("${index+1}",style: TextStyle(
                                        color: textColor[index],
                                      ),)),
                                    ),
                                  ),
                                );
                                }
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text('Description', style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 23,
                          ),),
                          SizedBox(width: 10,),
                          ReadMoreText(widget.desc,style: TextStyle(fontSize: 14, color:Colors.grey),
                            trimLines: 3,
                            trimMode: TrimMode.Line,
                            colorClickableText: Colors.lightBlueAccent,
                            trimCollapsedText: 'Read more',
                            trimExpandedText: '...Show less',
                            moreStyle: TextStyle(fontSize: 14, color: Colors.lightBlueAccent),
                          ),
                          Spacer(),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(color: Colors.blueAccent,
                                  width: 2,
                                  ),
                                ),
                                height: 55,
                                width: 55,
                                child: InkWell(
                                  onTap: (){
                                  setState(() {
                                    heart = CupertinoIcons.heart_fill;
                                    heartColor= Colors.pinkAccent;

                                  });
                                  },
                                  child: Icon(heart, color: heartColor,),
                                ),
                              ),
                                SizedBox(width: 25,),
                                InkWell(
                                  onTap: (){

                                    Toast.show('Coming soon!',duration: Toast.lengthShort,
                                    gravity: Toast.bottom,
                                    );
                                  },
                                  child: Container(
                                    height: 55,
                                    width: MediaQuery.of(context).size.width*0.65,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, right: 20),
                                      child: Row(
                                        children: [
                                          Text('Book Trip Now', style: TextStyle(color: Colors.white,
                                          fontSize: 17, fontWeight: FontWeight.bold,
                                          ),),
                                          Spacer(),
                                          Icon(CupertinoIcons.forward,
                                            size: 7,color: Colors.white,),
                                          Icon(CupertinoIcons.forward,
                                            size: 10,color: Colors.white,),
                                          Icon(CupertinoIcons.forward,
                                            size: 14,color: Colors.white,),
                                          Icon(CupertinoIcons.forward,
                                            size: 18,color: Colors.white,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
        ],
        )
      ),
    );
  }
}