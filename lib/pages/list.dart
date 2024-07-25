import 'package:flutter/material.dart';
import 'package:untitled/data/data%201.dart';
import 'package:untitled/google%20dart.dart';
import 'package:untitled/model_class/model%201.dart';
class list extends StatelessWidget {
  Model model;
  list({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${model.name}", style: myStyal(30,Colors.black,FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset("${model.image}"),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${model.price}",style: myStyal(20,Colors.black,FontWeight.bold),),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Text("${model.rating}",style: myStyal(20,Colors.black,FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  Text("views: ",style: myStyal(20,Colors.black),),
                  Text("${model.views}",style: myStyal(20,Colors.black,FontWeight.bold),),
                ],
              ),
            ],
          ),
        ],
      ),
  );
  }
}
