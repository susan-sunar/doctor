
import 'package:flutter/material.dart';
class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                      ),
                      const Column(
                        children: [
                          Text("Title text"),
                          Text("Description text"),
                        ], //Description
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20) ,
                      color: Colors.orange,
                    ),
                    child: const Center(child: Text("SAVE")),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                      ),
                      const Column(
                        children: [
                          Text("Title text"),
                          Text("Description text"),
                        ], //Description
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20) ,
                      color: Colors.orange,
                    ),
                    child: const Center(child: Text("SAVE")),
                  ),
                ],
              )
            ],
          ),
          Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          margin: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                          ),
                        ),
                        const Column(
                          children: [
                            Text("Title text"),
                            Text("Description text"),
                          ], //Description
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20) ,
                        color: Colors.orange,
                      ),
                      child: const Center(child: Text("SAVE")),
                    ),
                  ],
                )
              ],
          ),
        ],
      ),
    );
  }
}
