import 'package:flutter/material.dart';
import 'package:untitled/google%20dart.dart';
class cloud extends StatelessWidget {
  const cloud({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7ecef),
      body: Container(
        margin: EdgeInsets.all(10),
        height: 760,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffe2eafc),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("June 28th",style: myStyal(20,Colors.grey,),),
                              Text("Hey, Wesley",style: myStyal(30,Colors.black,FontWeight.bold),),
                            ],
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue,
                                image: DecorationImage(image: AssetImage("assets/images/susan.jpg"),fit: BoxFit.cover)
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 120,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue
                            ),
                            child: Column(
                              children: [
                                Text("13",style: myStyal(50,Colors.white,FontWeight.bold)),
                                Text("Active",style: myStyal(20,Colors.white),),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text("15",style: myStyal(50,Colors.black,FontWeight.bold),),
                              Text("Pending",style: myStyal(20,Colors.grey),),
                            ],
                          ),
                          Column(
                            children: [
                              Text("21",style: myStyal(50,Colors.black,FontWeight.bold),),
                              Text("Completed",style: myStyal(20,Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.all(20),
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  image: DecorationImage(image: AssetImage("assets/images/snow.jpg"),fit: BoxFit.cover)
              ),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 90,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Text("12",style: myStyal(45,Colors.black,FontWeight.bold),),
                          Text("Enrolled",style: myStyal(15,Colors.black,),)
                        ],
                      ),
                    ),
                    SizedBox(height: 70,),
                    Container(
                      height: 220,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.withOpacity(0.8),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("How to grow your",style: myStyal(25,Colors.white,FontWeight.bold),),
                                Icon(Icons.favorite_border_rounded,size: 45,color: Colors.white,),
                              ],
                            ),
                            Text("Facebook Page",style: myStyal(25,Colors.white,FontWeight.bold),),
                            Text("Follow these easy and",style: myStyal(16,Colors.white),),
                            Text("Simple steps",style: myStyal(16,Colors.white),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 3,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      height: 3,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white.withOpacity(0.19),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.white)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Enroll",style: myStyal(20,Colors.white,FontWeight.bold),),
                                            Icon(Icons.arrow_forward_sharp,size: 15,),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
