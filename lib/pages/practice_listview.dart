import 'package:flutter/material.dart';
import 'package:untitled/data/data_class.dart';
import 'package:untitled/google%20dart.dart';
import 'package:untitled/model_class/model_class.dart';
class Hey extends StatelessWidget {
  const Hey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Store"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount:4 ,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  // physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (contex,index){
                  return  Container(
                    margin: EdgeInsets.all(20),
                    height: 180,
                    width: double.infinity,
                    color: Colors.brown,
                    child: Column(
                      children: [
                        Text("${allproduct[index].bookName}",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 70,
                          child: Image.asset("${allproduct[index].image}"),
                        ),
                        Text("${allproduct[index].author}",style: TextStyle(fontSize: 22,color: Colors.black),),
                        Text("${allproduct[index].rating}",style: TextStyle(fontSize: 22,color: Colors.black),),
                        Text("${allproduct[index].price}",style: TextStyle(fontSize: 22,color: Colors.black),),
                        Text("${allproduct[index].genre}",style: TextStyle(fontSize: 22,color: Colors.black),),
                        Text("${allproduct[index].publishDate}",style: TextStyle(fontSize: 22,color: Colors.black),),
                        Text("${allproduct[index].views}",style: TextStyle(fontSize: 22,color: Colors.black),),
                      ],
                    ),
                  );
                  }
                  ),
            ),
                  ListView.builder(
                  itemCount:4 ,
                  shrinkWrap: true,
                  // scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                   itemBuilder: (contex,index){
    return Container(
    margin: EdgeInsets.all(20),
    height: MediaQuery.of(context).size.height*0.3,
    width: double.infinity,
    color: Colors.brown,
    child: Column(
    children: [
    Text("${allproduct[index].bookName}",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
    SizedBox(
    height: 70,
    child: Image.asset("${allproduct[index].image}"),
    ),
    Text("${allproduct[index].author}",style: TextStyle(fontSize: 22,color: Colors.black),),
    Text("${allproduct[index].rating}",style: TextStyle(fontSize: 22,color: Colors.black),),
    Text("${allproduct[index].price}",style: TextStyle(fontSize: 22,color: Colors.black),),
    Text("${allproduct[index].genre}",style: TextStyle(fontSize: 22,color: Colors.black),),
    Text("${allproduct[index].publishDate}",style: TextStyle(fontSize: 22,color: Colors.black),),
    Text("${allproduct[index].views}",style: TextStyle(fontSize: 22,color: Colors.black),),

    ],
    ),
    );
    },
    ),
    ]
    ),
    ),
    );
  }
}
