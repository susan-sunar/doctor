import 'package:flutter/material.dart';
import 'package:untitled/contants/constant%20model/doctor%20model.dart';
import 'package:untitled/contants/constant.dart';
import 'package:untitled/contants/cotstant%20data/doctor%20data.dart';
import 'package:untitled/google%20dart.dart';

class NiceDay extends StatelessWidget {
  DoctorModel doctorsModel;
  NiceDay({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: myStyal(26, primaryColor, FontWeight.bold),
            children: [
              TextSpan(
                text: "Doc",
              ),
              TextSpan(
                text: "Time",
                style: myStyal(26, secondaryColor, FontWeight.bold),
              ),
              TextSpan(text: "+"),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.more_vert_outlined),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("${doctorsModel.image}"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 450,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${doctorsModel.name}",
                        style: myStyal(20, Colors.black, FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        "${doctorsModel.payment}",
                        style: myStyal(20, secondaryColor, FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '${doctorsModel.speciality}',
                        style: myStyal(17, Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Text(
                        "About Doctor",
                        style: myStyal(20, primaryColor, FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [Text("${doctorsModel.aboutDoc}")],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        elevation: 4,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person_2_outlined,
                                  color: Colors.white),
                              Text(
                                "Patients",
                                style:
                                myStyal(10, Colors.black, FontWeight.bold),
                              ),
                            ],
                          ),
                          height: 60,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_bag,
                              size: 22,
                              color: Colors.black,
                            ),
                            Text(
                              "  Experience",
                              style: myStyal(10, Colors.black, FontWeight.bold),
                            )
                          ],
                        ),
                        height: 60,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              "  Rating",
                              style: myStyal(10, Colors.black, FontWeight.bold),
                            )
                          ],
                        ),
                        height: 60,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.69,
                    // width: MediaQuery.of(context).size.width * 0.61,
                    child: ListView.builder(
                      itemCount: Detail.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    height: 60,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border:
                                        Border.all(color: Colors.black)),
                                    child: Card(
                                      elevation: 4,
                                      child: Column(
                                        children: [
                                          Text(
                                            '${""}',
                                            style: myStyal(20, Colors.black,
                                                FontWeight.bold),
                                          ),
                                          Text(
                                            '${doctorsModel.appointmentDays[index]}',
                                            style: myStyal(15, Colors.black,
                                                FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}