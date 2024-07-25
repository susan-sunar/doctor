import 'package:flutter/material.dart';
class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  double timer = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child:
         SingleChildScrollView(
           child:
           Column(
             children: [
               SizedBox(
                 height: 30,
               ),
               Container(
                 margin: EdgeInsets.all(20),
                 child:
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Icon(Icons.arrow_back_ios_rounded),
                       Text('Playing Now',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                       Icon(Icons.music_note_sharp),
                     ],
                   ),
               ),
               Container(
                 width: 350,
                 margin: EdgeInsets.all(7),
                 padding: EdgeInsets.all(70),
                 height: 350,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(19),
                   image:DecorationImage(
                     image: AssetImage('assets/images/music7.jpg'),
                     fit: BoxFit.cover,
                   ),
                 ),
               ),
               SizedBox(
                 height: 15,
               ),
               Container(
                 margin: EdgeInsets.all(25),
                 child:
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Cloud 95C',style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                           Icon(Icons.favorite,color: Colors.red),
                         ],
                       ),
                       Row(
                         children: [
                           Text('Flame',style: TextStyle(color: Colors.grey),),
                         ],
                       ),
                       SizedBox(
                         height: 13,
                       ),
                       Slider(
                           max: 5,
                           value: timer, onChanged: (value){
                         setState(() {
                           timer=value;
                         });
                       }),
                       SizedBox(
                         height: 13,
                       ),
                       Text('$timer')
                     ],
                   ),
               ),
               Container(
                 margin: EdgeInsets.only(left: 27,right: 27),
                 child:
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('3.42',style: TextStyle(color: Colors.grey),),
                     Text('4.52',style: TextStyle(color: Colors.grey),),
                     Text("$timer"),
                   ],
                 ),
               ),
               Card(elevation: 5),
               Container(
                 height: 70,
                 margin: EdgeInsets.all(10),
                 child:
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Icon(Icons.shuffle,color: Colors.pink,size: 28,),
                     Icon(Icons.fast_rewind_sharp,color: Colors.pink,size: 30,),
                     Container(
                       height: 30,
                       width: 80,
                       decoration: BoxDecoration(
                         color: Colors.pink,
                         shape: BoxShape.circle,
                       ),
                       child:
                       Icon(Icons.pause,color: Colors.white,size: 30),
                     ),
                     Icon(Icons.fast_forward,color: Colors.pink,size: 30),
                     Icon(Icons.repeat_rounded,color: Colors.pink,),
                   ],
                 ),
               )

             ],
           ),
         ),

      ),

    );
  }
}

