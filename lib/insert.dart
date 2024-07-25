// import 'package:flutter/material.dart';
// class WeatherApp extends StatelessWidget {
//   const WeatherApp({super.key});  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     backgroundColor: Color(0xff088395),
//       body: SafeArea(
//     child: SingleChildScrollView(
//       child: Padding(
//       padding: const EdgeInsets.all(13.0),
//         child: Column(
//       children: [                // Top section
//       Container(
//           height: 400,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(24),
//         image: DecorationImage(
//           image: AssetImage('assets/images/hueee.jpg'), // Replace with your image asset                      fit: BoxFit.cover,
//         ),
//       ),
//       padding: const EdgeInsets.all(16.0),
//           child: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//       Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//           "25 January, Wednesday", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white, )),
//         ],
//       ),
//               Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//         Column(
//           children: [
//           Text("-10\u00B0C", style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold, color: Colors.white,),                              ),
//           Text("Real feel 18\u00B0C", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,                                  color: Colors.white70,
//             ),
//           ),
//         ],
//         ),
//       ],
//               ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Text(
//           "Irkutsk", style: TextStyle(fontSize: 16, color: Colors.black,
//
//         ),
//           ),
//           Icon(                            Icons.arrow_outward_sharp,
//             color: Colors.black,                          ),
//         ],                      ),
//     ],                  ),
//     ),
//       SizedBox(height: 12),                // Middle section
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//           children:[
//             Container(
//             padding: EdgeInsets.all(16),
//               height: 110,
//             width:MediaQuery.of(context).size.width*0.3,
//               decoration: BoxDecoration(
//             color: Colors.purpleAccent,
//                 borderRadius: BorderRadius.circular(16),
//           ),
//               child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Icon(Icons.air_outlined,color: Colors.white,),
//               Text("Wind",style: TextStyle(color:Colors.white )),
//               Text("5-8 km/h",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold )),
//             ],
//               ),
//           ),
//           ],
//         ),
//           Column(
//           children:[
//             Container(
//             padding: EdgeInsets.all(16),
//               height: 110,
//             width:MediaQuery.of(context).size.width*0.3,
//               decoration: BoxDecoration(
//             color: Colors.purpleAccent,
//                 borderRadius: BorderRadius.circular(16),
//           ),
//               child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Icon(Icons.device_thermostat_sharp,color: Colors.white,),
//               Text("Pressure",style: TextStyle(color:Colors.white )),                              Text("1000 MB",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
//             ],                          ),
//           ),                      ],
//         ),                    Column(
//           children:[                        Container(
//             padding: EdgeInsets.all(16),                          height: 110,
//             width:MediaQuery.of(context).size.width*0.3,                          decoration: BoxDecoration(
//             color: Colors.purpleAccent,                            borderRadius: BorderRadius.circular(16),
//           ),                          child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [                              Icon(Icons.water_drop_outlined,color: Colors.white,),
//               Text("Humidity",style: TextStyle(color:Colors.white )),                              Text("51%",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
//             ],                          ),
//           ),                      ],
//         ),                  ],
//       ),                SizedBox(height: 12),
//       // Bottom section                Container(
//       decoration: BoxDecoration(                    color: Colors.black26,
//         borderRadius: BorderRadius.circular(24),                  ),
//       padding: const EdgeInsets.all(16.0),                  child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,                    children: [
//       buildWeatherInfo("-10\u00B0C", "Now", Icons.wb_twilight_outlined),                      buildWeatherInfo("-23\u00B0C", "3 AM", Icons.cloudy_snowing),
//       buildWeatherInfo("-22\u00B0C", "4 AM", Icons.cloudy_snowing),                      buildWeatherInfo("-14\u00B0C", "5 AM", Icons.sunny_snowing),
//       buildWeatherInfo("-3\u00B0C", "6 AM", Icons.wb_sunny),                    ],
//     ),                ),
//       SizedBox(height: 12),                Container(
//         padding: EdgeInsets.all(16),                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(26),
//         color: Colors.black26,                  ),
//         child: Column(
//           children: [                      Row(
//             mainAxisAlignment:
//             MainAxisAlignment.spaceEvenly,                        children: [
//             Icon(Icons.sunny,size: 50,color: Colors.white54,),                          Icon(Icons.add_circle,size: 50,color: Colors.white,),
//             Icon(Icons.emoji_emotions_outlined,size: 50,color: Colors.white54,),                        ],
//           )                    ],
//         ),                ),
//       ],            ),
//   ),        ),
//     ),    );
//   }
//   Widget buildWeatherInfo(String temp, String time, IconData icon) {    return Column(
//     children: [
//       Text(          time,
//         style: TextStyle(color: Colors.white70),        ),
//       SizedBox(height: 8),
//       Icon(          icon,
//         color: Colors.white,
//       ),        SizedBox(height: 8),
//       Text(          temp,
//         style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),        ),
//     ],    );
//   }}