import 'package:flutter/material.dart';
class codebar extends StatelessWidget {
  const codebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('CODING BAR', style: TextStyle(fontSize: 25, color: Colors.black),),
          backgroundColor: Colors.yellow,
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('INFORMATION' , style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.dangerous_outlined,size: 30,),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('HOW TO CODE' , style: TextStyle(fontSize: 25),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.arrow_drop_up),
                    ],
                  )
                ],
              ),
              Text('I love coding, you will like it as well.I love coding, you will like it as well.I love coding, you will like it as well.I love coding, you will like it as well.I love coding, you will like it as well.I love coding, you will like it as well.I love coding, you will like it as well. I love coding, you will like it as well. I love coding, you will like it as well. I love coding, you will like it as well. I love coding, you will like it as well. I love coding, you will like it as well. I love coding, you will like it as well. I love coding, you will like it as well. I love coding, you will like it as well. ')
              ,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('CODING TYPE' , style: TextStyle(fontSize: 25),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.arrow_drop_down),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('SETTING' , style: TextStyle(fontSize: 25),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.arrow_drop_down),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 400,
                    height: 50,
                    child: Text("CLOSE", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.white,),),
                    decoration: BoxDecoration(color: Colors.deepOrangeAccent,borderRadius:BorderRadius.circular(10)),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}