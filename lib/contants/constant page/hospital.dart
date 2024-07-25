import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/contants/constant.dart';
import 'package:untitled/google%20dart.dart';
class HospitalDetail extends StatelessWidget {
  const HospitalDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 40,
                  width: 70,
                  child: Icon(Icons.arrow_back),
                ),
              ),
              RichText(
                  text: TextSpan(
                text: "Doc",style: myStyal(20,primaryColor,FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "Time",style: myStyal(20,secondaryColor,FontWeight.bold),
                      ),
                      TextSpan(
                        text: "+",
                      )
                    ]
              ),
              ),
            ],
          ),
          Center(child: Lottie.asset("assets/animations/ambulancee.json"),
          ),
          Container(
            padding: EdgeInsets.all(15),
              child: Text("An ambulance is a critical component of emergency medical services(EMS),designed to provide immediate medical care and transport patients to healthcare facilities",style: mystyle(23,Colors.black),)),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 290,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: secondaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.call),
                Text("113",style: mystyle(25,Colors.black,),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
