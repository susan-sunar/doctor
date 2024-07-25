import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Pubs extends StatelessWidget {
  const Pubs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
                child: Center(child: Text('SuuZannxxx', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Suzan"),
        centerTitle:true,
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Lottie.asset('assets/animations/delivery.json'),

            ),
            Center(
              child: Lottie.asset('assets/animations/delivery.json'),

            ),
            Center(
              child: Lottie.asset('assets/animations/delivery.json'),

            ),
            Center(
              child: Lottie.asset('assets/animations/delivery.json'),

            ),
            Center(
              child: Lottie.asset('assets/animations/delivery.json'),

            ),
          ],
        ),
      ),
    );
  }
}
