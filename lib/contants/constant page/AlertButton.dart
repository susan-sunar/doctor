import 'package:flutter/material.dart';
class Alertbutton extends StatelessWidget {
  const Alertbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width*0.8,
                color: Colors.blueGrey,
                onPressed:(){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text("Do you want to quite?"),
                    actions: [
                      TextButton(onPressed: (){}, child: Text("NO"))
                    ],
                  );
                }
                );
                })
          ],
        ),
      ),
    );
  }
}
