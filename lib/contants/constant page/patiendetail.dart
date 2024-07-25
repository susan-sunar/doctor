import 'package:flutter/material.dart';
import 'package:untitled/contants/constant.dart';
import 'package:untitled/google%20dart.dart';
class doctor_About_page extends StatelessWidget {
  const doctor_About_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: RichText(
          text: TextSpan(
            text: "Doc",
            style: mystyle(20,primaryColor,FontWeight.bold,
            ),
            children: [
              TextSpan(
                text:"Time",style: mystyle(20,secondaryColor,FontWeight.bold)),
              TextSpan(text: "+"),
            ]
          ),
      ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("assets/images/patient.jpg"),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.blueGrey),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
        Container(
          margin: EdgeInsets.all(10),
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: Suzaan",style: myStyal(20,Colors.black,FontWeight.bold),),
                Text("Age: 40",style: myStyal(20,Colors.black,),),
                SizedBox(height: 10,),
                Text("Weight:50",style: myStyal(20,Colors.black,),),
                SizedBox(height: 10,),
                Text("Blood Group:B+",style: mystyle(20,Colors.black),),
                SizedBox(height: 20,
                ),
               Row(
                 children: [
                   Container(
                     height: 70,
                     width: 260,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: primaryColor),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("See More")
                       ],
                     ),
                   ),
                 ],
               )

              ],
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
