import 'package:flutter/material.dart';
class experience extends StatelessWidget {
  const experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios),),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Bali Experience",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
            Text("Edit",style: TextStyle(fontSize: 20,color: Colors.black,),),
          ],
        ),
      ),
      body: Column(
          children: [
      Column(
      children: [
      Container(
      margin: EdgeInsets.all(10),
      height: 212,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(image: AssetImage('assets/images/travel 1.jpg'),fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child:
              Icon(Icons.favorite,color: Colors.red,)
          ),
          SizedBox(height: 60,),
          Container(
            margin: EdgeInsets.all(6),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Epic Trip * Bali indonesia",style: TextStyle(color: Colors.black54),),
                      Row(
                        children: [
                          Icon(Icons.star,size: 15,),
                          Text("4.8(12k)"),
                        ],
                      ),
                    ],
                  ),
                  Text("Best Place Ball",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Adventure from Ubud to Nusa Penida.."),
                      Text("\$500 per day"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    ],
    ),
    Column(
    children: [
    Container(
    margin: EdgeInsets.all(10),
    height: 212,
    width: double.infinity,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    image: DecorationImage(image: AssetImage('assets/images/travel 2.jpg'),fit: BoxFit.cover),
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
    Container(
    margin: EdgeInsets.all(10),
    height: 40,
    width: 40,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.white,
    ),
    child:
    Icon(Icons.favorite,color: Colors.red,)
    ),
    SizedBox(height: 60,),
    Container(
    margin: EdgeInsets.all(6),
    height: 80,
    width: double.infinity,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.white,
    ),
    child: Container(
    padding: EdgeInsets.all(10),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text("Epic Trip * Bali indonesia",style: TextStyle(color: Colors.black54),),
    Row(
    children: [
    Icon(Icons.star,size: 15,),
    Text("4.5(12k)"),
    ],
    ),
    ],
    ),
    Text("Unkown Village in Bali",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text("Discover the unknown village in Bail.."),
    Text("\$600 per day"),
    ],
    ),
    ],
    ),
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    Column(
    children: [
    Container(
    margin: EdgeInsets.all(10),
    height: 212,
    width: double.infinity,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    image: DecorationImage(image: AssetImage('assets/images/travel 3.jpg'),fit: BoxFit.cover),
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
    Container(
    margin: EdgeInsets.all(10),
    height: 40,
    width: 40,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.white,
    ),
    child:
    Icon(Icons.favorite,color: Colors.red,)
    ),
    SizedBox(height: 60,),
    Container(
    margin: EdgeInsets.all(6),
    height: 80,
    width: double.infinity,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.white,
    ),
    child: Container(
    padding: EdgeInsets.all(10),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text("Epic Trip * Bali indonesia",style: TextStyle(color: Colors.black54),),
    Row(
    children: [
    Icon(Icons.star,size: 15,),
    Text("4.1(10k)"),
    ],
    ),
    ],
    ),
    Text("Discover Hidden Gem Ball",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text("Adventure from Ubud to Nusa Penida.."),
    Text("\$900 per day"),
    ],
    ),
    ],
    ),
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ],
    ),
    );
  }
}