import 'package:flutter/material.dart';
import 'package:untitled/contants/constant.dart';
class ProjectHome extends StatelessWidget {
  const ProjectHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.remove_red_eye),
          Text("Views",style: mystyle(18,Colors.black,FontWeight.bold),),
          Column(
            
          )
        ],
      ),
    );
  }
}
