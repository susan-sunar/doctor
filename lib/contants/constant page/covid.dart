import 'package:flutter/material.dart';
import 'package:untitled/contants/constant.dart';
import 'package:untitled/google%20dart.dart';
class Covid extends StatelessWidget {
  const Covid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: RichText(
            text: TextSpan(
              text: "Doc",
              style: myStyal(26, primaryColor, FontWeight.bold,
              ),
              children: [
                TextSpan(
                    text: "Time",
                    style:
                    myStyal(26, secondaryColor, FontWeight.bold)),
                TextSpan(text: "+"),
              ],
            ),
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image(image: AssetImage("assets/images/covid.jpg"),fit: BoxFit.fill)),
            SizedBox(
              height: 7,
            ),
            Text("Covid-19",style: myStyal(25,Colors.black,FontWeight.bold,)),
            Container(
              height: 20,
            ),
            Text("Coronavirus disease is an infectious disease caused by the SARS CoV-2 virus.Most people infected with the virus will experience mild to moderate respiratory illness and recover without requiring special treatment",style: myStyal(20,Colors.black),),
            SizedBox(
              height: 7,
            ),
            Text("Stay Healthy!",style: myStyal(20,Colors.black,FontWeight.bold)),
            Center(child: Image.asset("assets/images/covid3.png",fit: BoxFit.fill)),
            SizedBox(
              height: 7,
            ),
            Center(
              child: Container(
                height: 70,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.red),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text("Death",style: myStyal(15,Colors.black,FontWeight.bold),),
                      Text("10099K",),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


