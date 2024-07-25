import 'package:flutter/material.dart';
class Cv2 extends StatelessWidget {
  const Cv2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},icon: Icon(Icons.menu),),
        actions: [
          Icon(Icons.delete),
          Icon(Icons.person),
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Discover products",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                Icon(Icons.filter_list),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 39,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Center(child: Text("Sofas",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                ),
                Container(
                  height: 39,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: Center(child: Text("Chairs",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
                Container(
                  height: 39,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Center(child: Text("Tables",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                ),
                Container(
                  height: 39,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Center(child: Text("Kitchen",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/comchair.jpg"),),
                      ),
                    ),
                    Text("Galet Lipari Design ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text("\$48.00",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.brown,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/white chair.jpg'),),
                      ),
                    ),
                    Text("white offive Chair",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text("\$50.00",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Column(
            children: [
            Container(
            width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/sofa.jpg'),),
              ),
            ),
            Text("sofa ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            Text("\$55.00",style: TextStyle(color: Colors.black,fontSize: 18),),
            Row(
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 10,),
              ],
            ),
          ],
        ),
        Column(
            children: [
            Container(
            width: 150,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/comchair.jpg'),),
      ),
    ),
    Text("comfortable Chair",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
    Text("\$45.00",style: TextStyle(color: Colors.black,fontSize: 18),),
    Row(
    children: [
    Container(
    height: 10,
    width: 10,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.orange,
    ),
    ),
    SizedBox(width: 10,),
    Container(
    height: 10,
    width: 10,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.blue,
    ),
    ),
    SizedBox(width: 10,),
    Container(
    height: 10,
    width: 10,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.green,
    ),
    ),
    SizedBox(width: 10,),
    ],
    ),
    ],
    ),
    ],
    ),
    ],
    ),
    ),
    );
  }
}