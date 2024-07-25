import 'package:flutter/material.dart';
import 'package:untitled/data/watsapp%20data.dart';
import 'package:untitled/model_class/watspp%20model.dart';
class Chill extends StatelessWidget {
  const Chill ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.horizontal,
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context,index){
                return Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:AssetImage("${Chat[index].image}"),
                              fit: BoxFit.cover,

                            ),
                          ),
                        ),
                        title: Text("${Chat[index].name}",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                        subtitle: Text("${Chat[index].chat}",style: TextStyle(fontSize: 15,color: Colors.white),),
                        trailing: Icon(Icons.favorite,color: Colors.redAccent,),
                      ),
                      Divider(
                        height: 15,
                        thickness: 4,
                      )
                    ]
                  ),
                );
                })
          ],
        ),
      ),
    );
  }
}
