import 'package:flutter/material.dart';
import 'package:untitled/contants/constant%20page/doctor%20page.dart';
import 'package:untitled/contants/constant%20page/doctor/doctor/list.dart';
import 'package:untitled/contants/constant%20page/hospitalpage.dart';
import 'package:untitled/contants/cotstant%20data/doctor%20data.dart';

class ButtonNavigator extends StatefulWidget {
  const ButtonNavigator({super.key});

  @override
  State<ButtonNavigator> createState() => _ButtonNavigatorState();
}

class _ButtonNavigatorState extends State<ButtonNavigator> {
  List list=[
    Coffee(),
    NiceDay(doctorsModel: Detail[0]),
    Hospitalpage(),

  ];
  List<BottomNavigationBarItem>alliteams=[
   BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
   BottomNavigationBarItem(icon: Icon(Icons.category),label: "Details"),
   BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),

  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
        onTap: (int index){
        _currentIndex = index;
        setState(() {

        });
        },
        items: alliteams,
    ),
    );
  }
}
