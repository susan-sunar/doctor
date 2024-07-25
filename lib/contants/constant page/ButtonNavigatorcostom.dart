import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled/contants/constant%20page/doctor%20page.dart';
import 'package:untitled/contants/constant%20page/doctor/doctor/list.dart';
import 'package:untitled/contants/constant%20page/hospitalpage.dart';
import 'package:untitled/contants/cotstant%20data/doctor%20data.dart';
class ButtonNavigatorcostom extends StatefulWidget {
  const ButtonNavigatorcostom({super.key});

  @override
  State<ButtonNavigatorcostom> createState() => _ButtonNavigatorcostomState();
}

class _ButtonNavigatorcostomState extends State<ButtonNavigatorcostom> {
  List list=[
    Coffee(),
    NiceDay(doctorsModel: Detail[0]),
    Hospitalpage(),

  ];
  List<Icon>alliteams=[
    Icon(Icons.home),
    Icon(Icons.category),
    Icon(Icons.search),

  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar:CurvedNavigationBar(
        index: _currentIndex,
          onTap: (int index){
          _currentIndex=index;
          setState(() {

          });
          },
          items: alliteams,
      ),

    );
  }
}

