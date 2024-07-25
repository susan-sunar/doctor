import 'package:flutter/material.dart';
import 'package:untitled/data/data%201.dart';
import 'package:untitled/google%20dart.dart';
import 'package:untitled/model_class/model%201.dart';
import 'package:untitled/pages/list.dart';
import 'package:untitled/pages/right.dart';
class samd extends StatelessWidget {
  samd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amazon"),
        centerTitle: true,
        backgroundColor:Colors.yellow,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                shrinkWrap: true,
                  itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>list(model: allproduct[index])));
                    },
                    child: Container(

                      margin: EdgeInsets.all(10),
                      height:180,
                      width: 320,
                      decoration: BoxDecoration(
                          image: DecorationImage(image:AssetImage("${allproduct[index].image}"), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child:Column(
                        children: [
                      Text("${allproduct[index].name}",style: myStyal(20,Colors.white,FontWeight.bold),),
                        ],
                      ),
                    ),
                  );
                  }),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: allproduct.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                 return Container(
                  margin: EdgeInsets.all(10),
                  height:180,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height:160 ,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(image:AssetImage("${allproduct[index].image}"))
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${allproduct[index].name}",style: myStyal(20,Colors.white,FontWeight.bold),),
                              Text("\$ ${allproduct[index].price}",style: myStyal(20,Colors.white,FontWeight.bold),),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Text("${allproduct[index].rating}",style: myStyal(20,Colors.white,FontWeight.bold),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("views: ",style: myStyal(20,Colors.white),),
                                  Text("${allproduct[index].views}",style: myStyal(20,Colors.white,FontWeight.bold),),
                                ],
                              ),
                              InkWell(
                                onTap:(){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=> button()));
                                },
                                child: Container(
                                  height:30 ,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black),
                                    color: Colors.white,
                                  ),
                                  child: Center(child: Text("Next",style: myStyal(14,Colors.black),)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
                }),
          ],
        ),
      ),
    );
  }
}
