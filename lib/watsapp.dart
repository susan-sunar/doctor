import 'package:flutter/material.dart';
class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp",style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),),
        centerTitle: false,
        actions: const [
          Icon(Icons.camera_alt_outlined),
          Icon(Icons.search),
          Icon(Icons.more_vert_outlined)
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 50,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        const Column(
                          children: [
                            Text("Title text",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Description text"),
                          ],
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text("11:00 pm",style: TextStyle(fontSize: 20,color: Colors.green),),
                      ],
                    ),
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
                          margin: const EdgeInsets.all(10),
                          height: 50,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        const Column(
                          children: [
                            Text("Title text",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Description text"),
                          ],
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text("11:00 pm",style: TextStyle(fontSize: 20,color: Colors.green),),
                      ],
                    ),
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
                          margin: const EdgeInsets.all(10),
                          height: 50,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        const Column(
                          children: [
                            Text("Title text",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Description text"),
                          ],
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text("11:00 pm",style: TextStyle(fontSize: 20,color: Colors.green),),
                      ],
                    ),
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
                          margin: const EdgeInsets.all(10),
                          height: 50,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        const Column(
                          children: [
                            Text("Title text",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Description text"),
                          ],
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text("11:00 pm",style: TextStyle(fontSize: 20,color: Colors.green),),
                      ],
                    ),
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
                          margin: const EdgeInsets.all(10),
                          height: 50,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        const Column(
                          children: [
                            Text("Title text",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Description text"),
                          ],
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text("11:00 pm",style: TextStyle(fontSize: 20,color: Colors.green),),
                      ],
                    ),
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
                          margin: const EdgeInsets.all(10),
                          height: 50,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        const Column(
                          children: [
                            Text("Title text",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Description text"),
                          ],
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text("11:00 pm",style: TextStyle(fontSize: 20,color: Colors.green),),
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
