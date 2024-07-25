import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Carousal extends StatefulWidget {
  const Carousal({super.key});

  @override
  State<Carousal> createState() => _CarousalState();
}

class _CarousalState extends State<Carousal> {
  final List<String>images =[
    "assets/images/dorimon.jpg",
    "assets/images/dormi.jpg",
    "assets/images/shuzuka.jpg"
    "assets/images/photosu.jpg",
    "assets/images/nobita.jpg"
  ];
  int int_currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
                items: images.map((e){
                  return Image.asset(e);
                  }).toList(),
                options: CarouselOptions(
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (value,_){
                    setState(() {
                      int_currentPage=value;
                    });
                  }
                ),
            ),
            buildIndicator(),
          ],
        ),
      ),
    );
    }
  buildIndicator(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for(int i=0;i<images.length;i++)
        Container(
          margin: EdgeInsets.all(5),
          height: 7,
          width: i==int_currentPage ?35:20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: i==int_currentPage?Colors.black:Colors.grey,
          ),
        )
      ],
    );
  }
}
