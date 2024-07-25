import 'package:flutter/material.dart';
class assignment extends StatelessWidget {
  const assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back) ,),
        actions: [
          Icon(Icons.favorite_border,size: 30,),
          SizedBox(width: 10,),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image:AssetImage("assets/images/image 2.jpg"),),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:100 ,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 90,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/image 2.jpg",),),
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/img_1.png",),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.star,size: 30,color: Colors.deepOrange,),
                Text('4.8',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(2),
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("145 reviews",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),)),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Leset Galant',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height:20 ,
                      width: 20,
                      decoration: BoxDecoration(
                        // color: Colors.lightGreen,
                        border: Border.all(color: Colors.lightBlueAccent,width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        height:20 ,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          border: Border.all(color: Colors.white,width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height:20 ,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ],

            ),
            Text('A "golden chair" can refer literally to a chair made of or adorned with gold, symbolizing wealth and status historically. It can also symbolically represent a position of authority or prestige, and in artistic or cultural contexts, it may signify a place of honor or elevated status.'),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("\$ 64.00",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                    ],
                  ),
                  Row(
                    children: [
                      MaterialButton(onPressed: (){},
                        minWidth: 200,
                        color: Colors.black,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Text('Add to cart',style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
