import 'package:flutter/material.dart';
import 'package:untitled/contants/constant%20model/medicine/hospital.dart';
import 'package:untitled/contants/constant.dart';

class Hospitalmad extends StatelessWidget {
  Hospital hospital;
  Hospitalmad({super.key,required this.hospital});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: mystyle(26,primaryColor,FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                    text: "Time",
                    style: mystyle(26,secondaryColor,FontWeight.bold)
                ),
                TextSpan(
                  text: "+",
                  style: mystyle(26,primaryColor,FontWeight.bold),
                ),
              ]
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Text("${hospital.name}",style: mystyle(30,Colors.black,FontWeight.bold),),
              SizedBox(height: 10,),
              Card(
                  elevation: 8,
                  child: Image(image: AssetImage("${hospital.image}"),fit: BoxFit.cover,)),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("${hospital.brief}",style: mystyle(20),),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    // Text("${hospital.patient}",style: mystyle(20),),
                    // SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.call,size: 20,),
                        SizedBox(width: 20,),
                        Text("${hospital.number}",style: mystyle(20),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on_outlined,size: 20,),
                        SizedBox(
                          height: 20,),
                        Text(" ${hospital.location}",style: mystyle(20),),
                      ],
                    ),
                    Text("Doctor: ${hospital.doctor}",style: mystyle(20),),
                    SizedBox(height: 10,),
                    Text("Patient: ${hospital.patient}",style: mystyle(20),),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: primaryColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Appointment detail",style: mystyle(24,Colors.black),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}