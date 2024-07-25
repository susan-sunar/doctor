import 'package:flutter/material.dart';
import 'package:untitled/contants/constant.dart';
import 'package:untitled/contants/cotstant%20data/medicinedata.dart';
import 'package:untitled/google%20dart.dart';
class CapitalHome extends StatelessWidget {
  List Capital;
  CapitalHome({super.key,required this.Capital});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyal(26,primaryColor,FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                    text: "Time",
                    style: myStyal(26,secondaryColor,FontWeight.bold)
                ),
                TextSpan(
                  text: "+",
                  style: myStyal(26,primaryColor,FontWeight.bold),
                ),
              ]
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                itemCount: Medicine.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context,index){
                  return Card(
                    elevation: 7,
                    child: Container(
                      height: 500,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            margin: EdgeInsets.all(7),
                            padding: EdgeInsets.all(70),
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image:DecorationImage(image: AssetImage("${Capital[index].image}"),fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            child:
                            Column(
                              children: [
                                Text("${Capital[index].name}",style: myStyal(20,Colors.black,FontWeight.bold),),
                                Text("${Capital[index].price}",style: myStyal(20,Colors.black,FontWeight.bold),),
                                Text("${Capital[index].weight}",style: myStyal(20,Colors.black,FontWeight.bold),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 30,
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
                    Icon(Icons.shopping_bag_sharp,size: 25,),
                    Text("Buy Now",style: mystyle(25,Colors.black,FontWeight.bold),),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}