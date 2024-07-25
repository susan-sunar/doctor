// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Doctor Appointment',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: AppointmentScreen(),
//     );
//   }
// }
//
// class AppointmentScreen extends StatefulWidget {
//   @override
//   _AppointmentScreenState createState() => _AppointmentScreenState();
// }
//
// class _AppointmentScreenState extends State<AppointmentScreen> {
//   String? _selectedDoctor;
//   DateTime? _selectedDate;
//   String? _selectedTime;
//
//   final List<String> _doctors = ['Dr. Smith', 'Dr. Jones', 'Dr. Brown'];
//   final List<String> _times = [
//     '09:00 AM',
//     '10:00 AM',
//     '11:00 AM',
//     '01:00 PM',
//     '02:00 PM',
//     '03:00 PM'
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Book a Doctor\'s Appointment'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             DropdownButtonFormField<String>(
//               decoration: InputDecoration(labelText: 'Select Doctor'),
//               items: _doctors.map((doctor) {
//                 return DropdownMenuItem(
//                   value: doctor,
//                   child: Text(doctor),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   _selectedDoctor = value;
//                 });
//               },
//             ),
//             SizedBox(height: 16.0),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Choose Date'),
//               readOnly: true,
//               onTap: () async {
//                 DateTime? pickedDate = await showDatePicker(
//                   context: context,
//                   initialDate: DateTime.now(),
//                   firstDate: DateTime.now(),
//                   lastDate: DateTime(2101),
//                 );
//                 if (pickedDate != null) {
//                   setState(() {
//                     _selectedDate = pickedDate;
//                   });
//                 }
//               },
//               controller: TextEditingController(
//
//               ),
//             ),
//             SizedBox(height: 16.0),
//             DropdownButtonFormField<String>(
//               decoration: InputDecoration(labelText: 'Choose Time'),
//               items: _times.map((time) {
//                 return DropdownMenuItem(
//                   value: time,
//                   child: Text(time),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   _selectedTime = value;
//                 });
//               },
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () {
//                 if (_selectedDoctor != null &&
//                     _selectedDate != null &&
//                     _selectedTime != null) {
//                   showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(
//                         title: Text('Appointment Confirmation'),
//                         content: Text(
//                           'Your appointment with $_selectedDoctor is booked for ${DateFormat('yyyy-MM-dd').format(_selectedDate!)} at $_selectedTime.',
//                         ),
//                         actions: [
//                           TextButton(
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                             child: Text('OK'),
//                           ),
//                         ],
//                       );
//                     },
//                   );
//                 }
//               },
//               child: Text('Book Appointment'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//
