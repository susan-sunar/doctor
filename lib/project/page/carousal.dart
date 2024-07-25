import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class CarousalPage extends StatefulWidget {
  const CarousalPage({super.key});

  @override
  State<CarousalPage> createState() => _CarousalPageState();
}

class _CarousalPageState extends State<CarousalPage> {
  final List<String>images=[
   "assets/images/job.jpg",
   "assets/images/job1.jpg",
   "assets/images/job2.jpg",
   "assets/images/job3.jpg",
   "assets/images/job4.jpg",
   "assets/images/job5.jpg",
   "assets/images/job6.jpg",
  ];
  int _currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
                items: images.map((f){
                  return Image.asset(f);
                }).toList(),
                options:CarouselOptions(
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (value,_){
                    setState(() {
                      _currentPage=value;
                    });
                  }
                )
            ),

          ],
        ),
      ),
      
    );
  }
  buildindicator(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for(int i=0;i<images.length;i++)
          Container(
            margin: EdgeInsets.all(5),
            height: 7,
            width: i== _currentPage?35:20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: i==_currentPage?Colors.black:Colors.grey,
            ),
          ),
      ],
    );
  }
}
