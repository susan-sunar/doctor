import 'package:flutter/material.dart';
import 'package:untitled/contants/constant%20page/AlertButton.dart';
import 'package:untitled/contants/constant%20page/ButtonNavigator.dart';
import 'package:untitled/contants/constant%20page/ButtonNavigatorcostom.dart';
import 'package:untitled/contants/constant%20page/covid.dart';
import 'package:untitled/contants/constant%20page/doctor/doctor/list.dart';
import 'package:untitled/contants/constant%20page/hospital.dart';
import 'package:untitled/contants/constant%20page/hospitalpage.dart';
import 'package:untitled/contants/constant%20page/medicine/carousal.dart';
import 'package:untitled/contants/constant%20page/patiendetail.dart';
import 'package:untitled/contants/constant%20page/pharmacypage.dart';
import 'package:untitled/pages/registration.dart';
import 'package:untitled/project/page/carousal.dart';
import 'package:untitled/project/page/homepage.dart';



import 'CustomSlider.dart';
import 'assignment.dart';
 import 'package:untitled/contants/constant.dart';
import 'contants/constant page/doctor page.dart';
import 'pages/practice 2.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Coffee(),
    );
  }
}

