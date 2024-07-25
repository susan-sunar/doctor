import 'package:flutter/material.dart';
import 'package:untitled/ilovecoding.dart';
class Traveler extends StatelessWidget {
  const Traveler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Traveler",style: TextStyle(fontSize: 20,color: Colors.white),),
        backgroundColor: Colors.pink,
        actions: const [
          Icon(Icons.search),
          Icon(Icons.logout),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Tiger Nest",style: TextStyle(fontSize: 25,color: Colors.cyan,fontWeight: FontWeight.bold),),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Md.Mehedi Hasan",style: TextStyle(color: Colors.grey),),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Text("(5)"),
                ],
              ),
            ],
          ),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.purple,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.timer,color: Colors.red,),
                  Text("12:00 PM"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.calendar_month,color: Colors.red,),
                  Text("June 25,2024"),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
              ),
              Text(names),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.red,
            ),
            child: const Center(child: Text("Contact Us",style: TextStyle(color: Colors.white,fontSize: 30),)),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.purple,
            ),
            child: const Center(child: Text("Purchase Plan",style: TextStyle(fontSize: 30,color: Colors.white,),)),
          ),
        ],
      ),
    );
  }
}