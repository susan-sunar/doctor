import 'package:flutter/material.dart';
import 'package:untitled/contants/constant%20page/covid.dart';
import 'package:untitled/contants/constant%20page/doctor/doctor/list.dart';
import 'package:untitled/contants/constant%20page/hospital.dart';
import 'package:untitled/contants/constant%20page/hospitalpage.dart';
import 'package:untitled/contants/constant%20page/patiendetail.dart';
import 'package:untitled/contants/constant%20page/pharmacypage.dart';
import 'package:untitled/contants/constant.dart';
import 'package:untitled/contants/cotstant%20data/doctor%20data.dart';
import 'package:untitled/google%20dart.dart';

class Coffee extends StatelessWidget {
 const Coffee ({super.key,});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                ///AppBar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    RichText(
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
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=> doctor_About_page()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/doctor9.jpg"),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
                  SizedBox(
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.47,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/female_doc4.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topLeft: Radius.circular(40)),
                            border: Border.all(color: primaryColor)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        height: MediaQuery.of(context).size.height * 0.43,
                        width: MediaQuery.of(context).size.width * 0.43,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                             height: 37,
                            ),
                            Text(
                              "Stay Healthy!",
                              style: myStyal(30, Colors.black, FontWeight.bold),
                            ),
                            Text(
                              "Stay Safe!",
                              style: myStyal(25, Colors.black, FontWeight.bold),
                            ),
                            Text(
                                "We are here to help people 24/7 with the best treatment in the world"),
                            Row(
                              children: [
                                Icon(
                                  Icons.video_call,
                                  color: primaryColor,
                                ),
                                Text(
                                  "   Meet Online",
                                  style: myStyal(
                                      18, secondaryColor, FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 150,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Services",
                      style: myStyal(25, Colors.black, FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: myStyal(18, Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder)=>const HospitalDetail()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/images/ambulance.gif"),
                          Text("Ambulance"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Hospitalpage()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/images/hospital.gif"),
                          Text("Hospitals"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Covid()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/images/virus.gif"),
                          Text("Virus"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MedicinePage()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/images/medicine.gif"),
                          Text("Medicines"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                  width: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated Doctors",
                      style: myStyal(25, primaryColor, FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: myStyal(18, Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: Detail.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        childAspectRatio: 0.7),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (builder) => NiceDay(doctorsModel: Detail[index],)));
                        },
                        child: Card(
                          elevation: 4,
                          child: Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  maxRadius: 50,
                                  backgroundImage:
                                  AssetImage("${Detail[index].image}"),
                                ),
                                Text(
                                  "${Detail[index].name}",
                                  style: myStyal(
                                      22, Colors.black, FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "${Detail[index].speciality}",
                                  style: myStyal(16, Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  height: 40,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "4.5",
                                        style: myStyal(19),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}