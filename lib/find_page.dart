// // lib/pages/find_page.dart
// import 'package:flutter/material.dart';
// import 'package:errorx/homepage.dart';
// import 'package:url_launcher/url_launcher.dart';
// //import 'package:errorx/data/dummy_data.dart';
//
// //import '../models/donation_model.dart'; //connect dengan file database
//
// class FindPage extends StatelessWidget {
//   const FindPage({super.key});
//
//   void _launchWhatsApp(String phoneNumber) async {
//     final url = Uri.parse("https://wa.me/$phoneNumber");  //phoneNumber tukar kpd nama column data
//     if (await canLaunchUrl(url)) {
//       await launchUrl(url, mode: LaunchMode.externalApplication);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Donations'),
//         backgroundColor: Colors.orangeAccent,
//         actions: <Widget>[
//           IconButton(
//             icon: const CircleAvatar(
//               backgroundImage: AssetImage('assets/foodbank.jpg'),
//             ),
//             padding: const EdgeInsets.fromLTRB(0, 0, 15, 8),
//             onPressed: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => const homepage()),
//               );
//             },
//           )
//         ],
//       ),
//       backgroundColor: Colors.white,
//       body: ListView.builder(
//         itemCount: donations.length, // tukar donation kpd variable dlm file donate
//         itemBuilder: (ctx, index) {
//           final donation = donations[index]; // tukar donation kpd variable dlm file donate
//           return Card(
//             margin: const EdgeInsets.all(8),
//             color: Colors.orangeAccent,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Food Name: ${donation.foodName}",
//                       style: const TextStyle(
//                           fontSize: 18, fontWeight: FontWeight.bold)),
//                   const SizedBox(height: 4),
//                   Text("Food Type: ${donation.foodType}"),
//                   Text("Quantity: ${donation.quantity}"),
//                   const SizedBox(height: 10),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                     ),
//                     onPressed: () {
//                       _showDonationDetails(context, donation);
//                     },
//                     child: const Text(
//                       "More Details",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   void _showDonationDetails(BuildContext context, Donation donation) {  // tukar donation kpd variable dlm file donate
//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: const Text("Donation Details"),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text("Donor Name: ${donation.name}"),
//             Text("Phone: ${donation.phoneNumber}"),
//             const SizedBox(height: 10),
//
//             ElevatedButton(
//               onPressed: () {
//                 _launchWhatsApp(donation.phoneNumber);
//               },
//
//               child: const Text("Contact via WhatsApp"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
