import 'package:flutter/material.dart';
class PractiseView extends StatelessWidget {
  const PractiseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 100,
              width: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage("assets/images/shuzuka.jpg")),

            ),
          ),
          Positioned(
            right: -50,
              child:Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(100),
                       image: DecorationImage(image: AssetImage("assets/images/nobita.jpg")),
                    ),
                  )
                ],
              ),
          ),
          Positioned(
            right: -100,
              child:Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(image: AssetImage("assets/images/dormi.jpg"))
                    ),
                  )
                ],
              ) )


        ],
      )
    );
  }
}
