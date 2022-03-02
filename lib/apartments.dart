import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:readyrent/constant.dart';

class Apartments extends StatelessWidget {
  const Apartments({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme:const IconThemeData(color:kPrimaryColor),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(   
        children:[
          SizedBox(
            height: 300,
            width: double.infinity,
            child: CarouselSlider(
              items: [
                 Container(
                  margin: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/hostelimage1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ], options: CarouselOptions(
                height: 290.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ),  
    const SizedBox(
      height: 50,
    ),
           SizedBox(
            height: 300,
            width: double.infinity,
            child: CarouselSlider(
              items: [
                 Container(
                  margin: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/hostelimage1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ], options: CarouselOptions(
                height: 290.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ),  
        ],
      ),

    );
  }
}