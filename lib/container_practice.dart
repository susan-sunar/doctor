
import 'package:flutter/material.dart';
import 'package:untitled/ilovecoding.dart';
class Sir extends StatelessWidget {
  const Sir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container practice"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Blog",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.cyan,
                    ),
                    child: const Center(child: Text("Nature",style: TextStyle(fontSize: 16,color: Colors.white),)),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: const Center(child: Text("Animal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: const Center(child: Text("Fish",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: const Center(child: Text("Space",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: const Center(child: Text("Lago",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  ),
                ],
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 70,
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                              const Column(
                                children: [
                                  Text("Md.Mehedi Hasan"),
                                  Text("Photographer"),
                                ],
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(Icons.fullscreen),
                            ],
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                        ],
                      ),
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
                                height: 60,
                                width: 70,
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                              const Column(
                                children: [
                                  Text("Md.Mehedi Hasan"),
                                  Text("Photographer"),
                                ],
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(Icons.fullscreen),
                            ],
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.cyan[700],
                    ),
                    child: const Center(child: Text("Subscribe",style: TextStyle(fontSize: 20,color: Colors.white),)),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
