import 'package:flutter/material.dart';
class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Practise"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 25,
              shrinkWrap: true,
              itemBuilder: (context,index){
                return Container(
                  color: Colors.blueAccent,
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.9,
            ),

            ),

          ],
        ),
      ),
    );
  }
}
