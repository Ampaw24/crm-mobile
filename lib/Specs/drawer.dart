// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


// import 'package:flutter/material.dart';

// import 'colors.dart';
// import 'materialspec.dart';

// Future<dynamic> showDrawer(
//   BuildContext context,
// ) {
//   double h = MediaQuery.of(context).size.height;

//   return showModalBottomSheet(
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(20),
//         topRight: Radius.circular(20),
//       ),
//     ),
//     isDismissible: true,
//     isScrollControlled: true,
//     context: context,
//     builder: (BuildContext context) {
//       return Container(
//           decoration: BoxDecoration(),
//           height: h * 0.8,
//           child: Column(
//             children: [
//               Container(
//                 width: 200,
//                 height: 50,
//                 decoration: BoxDecoration(
//                     color: GREY,
//                     borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(15),
//                         bottomRight: Radius.circular(15))),
//                 child: Center(
//                     child: Text("Settings",
//                         style: TextStyle(
//                             fontSize: 17,
//                             fontWeight: FontWeight.w700,
//                             color: PURP))),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//                 child: Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("",
//                               style: TextStyle(
//                                   fontSize: 17,
//                                   fontWeight: FontWeight.w700,
//                                   color: PURP)),
//                           SizedBox(
//                             height: 20,
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(
//                                 context.formatString(LocaleData.perDetails, []),
//                                 style: TextStyle(
//                                     fontSize: 17,
//                                     fontWeight: FontWeight.w700,
//                                     color: mcgpalette.shade500)),
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(8),
//                             width: 80,
//                             height: 30,
//                             decoration: BoxDecoration(
//                                 color: BLUE,
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: GestureDetector(
//                               onTap: () => Get.to(Profile(),
//                                   transition: Transition.downToUp),
//                               child: Center(
//                                 child: Text("Edit",
//                                     style: TextStyle(
//                                         fontSize: 17,
//                                         fontWeight: FontWeight.w700,
//                                         color: WHITE)),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(
//                                 context.formatString(LocaleData.changePass, []),
//                                 style: TextStyle(
//                                     fontSize: 17,
//                                     fontWeight: FontWeight.w700,
//                                     color: mcgpalette.shade500)),
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(8),
//                             width: 80,
//                             height: 30,
//                             decoration: BoxDecoration(
//                                 color: BLUE,
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: GestureDetector(
//                               onTap: () => Get.to(Profile(),
//                                   transition: Transition.downToUp),
//                               child: Center(
//                                 child: Text("Edit",
//                                     style: TextStyle(
//                                         fontSize: 17,
//                                         fontWeight: FontWeight.w700,
//                                         color: WHITE)),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//                 child: Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("Language",
//                               style: TextStyle(
//                                   fontSize: 17,
//                                   fontWeight: FontWeight.w700,
//                                   color: PURP)),
//                           SizedBox(
//                             height: 20,
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text("English",
//                                 style: TextStyle(
//                                     fontSize: 17,
//                                     fontWeight: FontWeight.w700,
//                                     color: BLACK)),
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(8),
//                             width: 80,
//                             height: 30,
//                             decoration: BoxDecoration(
//                                 color: BLUE,
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: Center(
//                               child: Text("Edit",
//                                   style: TextStyle(
//                                       fontSize: 17,
//                                       fontWeight: FontWeight.w700,
//                                       color: WHITE)),
//                             ),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text("Dutch",
//                                 style: TextStyle(
//                                     fontSize: 17,
//                                     fontWeight: FontWeight.w700,
//                                     color: BLACK)),
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(8),
//                             width: 80,
//                             height: 30,
//                             decoration: BoxDecoration(
//                                 color: BLUE,
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: Center(
//                               child: Text("Edit",
//                                   style: TextStyle(
//                                       fontSize: 17,
//                                       fontWeight: FontWeight.w700,
//                                       color: WHITE)),
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ));
//     },
//   );
// }


// // showDrawer(
// //   BuildContext context,
// // ) {
// //   double h = MediaQuery.of(context).size.height;
// //   final languageProvider = Provider.of<LanguageProvider>(context);
// //   return showModalBottomSheet(
// //     shape: RoundedRectangleBorder(
// //       borderRadius: BorderRadius.only(
// //         topLeft: Radius.circular(20),
// //         topRight: Radius.circular(20),
// //       ),
// //     ),
// //     isDismissible: true,
// //     isScrollControlled: true,
// //     context: context,
// //     builder: (BuildContext context) {
// //       return Container(
// //           decoration: BoxDecoration(),
// //           height: h * 0.8,
// //           child: Column(
// //             children: [
// //               Container(
// //                 width: 200,
// //                 height: 50,
// //                 decoration: BoxDecoration(
// //                     color: GREY,
// //                     borderRadius: BorderRadius.only(
// //                         bottomLeft: Radius.circular(15),
// //                         bottomRight: Radius.circular(15))),
// //                 child: Center(
// //                     child: Text("Settings",
// //                         style: TextStyle(
// //                             fontSize: 17,
// //                             fontWeight: FontWeight.w700,
// //                             color: PURP))),
// //               ),
// //               SizedBox(
// //                 height: 20,
// //               ),
// //               Container(
// //                 margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
// //                 child: Card(
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(10),
// //                   ),
// //                   child: Column(
// //                     children: [
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Text("Profile",
// //                               style: TextStyle(
// //                                   fontSize: 17,
// //                                   fontWeight: FontWeight.w700,
// //                                   color: PURP)),
// //                           SizedBox(
// //                             height: 20,
// //                           ),
// //                         ],
// //                       ),
// //                       SizedBox(height: 20),
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                         children: [
// //                           Padding(
// //                             padding: const EdgeInsets.all(8.0),
// //                             child: Text("bryanbendt@gmail.com",
// //                                 style: TextStyle(
// //                                     fontSize: 17,
// //                                     fontWeight: FontWeight.w700,
// //                                     color: BLACK)),
// //                           ),
// //                           SizedBox(
// //                             width: 20,
// //                           ),
// //                           Container(
// //                             margin: EdgeInsets.all(8),
// //                             width: 80,
// //                             height: 30,
// //                             decoration: BoxDecoration(
// //                                 color: BLUE,
// //                                 borderRadius: BorderRadius.circular(10)),
// //                             child: Center(
// //                               child: Text("Edit",
// //                                   style: TextStyle(
// //                                       fontSize: 17,
// //                                       fontWeight: FontWeight.w700,
// //                                       color: WHITE)),
// //                             ),
// //                           )
// //                         ],
// //                       ),
// //                       SizedBox(
// //                         height: 20,
// //                       ),
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                         children: [
// //                           Padding(
// //                             padding: const EdgeInsets.all(8.0),
// //                             child: Text("Change Password",
// //                                 style: TextStyle(
// //                                     fontSize: 17,
// //                                     fontWeight: FontWeight.w700,
// //                                     color: BLACK)),
// //                           ),
// //                           SizedBox(
// //                             width: 20,
// //                           ),
// //                           Container(
// //                             margin: EdgeInsets.all(8),
// //                             width: 80,
// //                             height: 30,
// //                             decoration: BoxDecoration(
// //                                 color: BLUE,
// //                                 borderRadius: BorderRadius.circular(10)),
// //                             child: Switch(
// //                               value:
// //                                   languageProvider.currentLocale.languageCode ==
// //                                       'en',
// //                               onChanged: (value) {
// //                                 languageProvider.toggleLanguage();
// //                               },
// //                             ),
// //                           )
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //               Container(
// //                 margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
// //                 child: Card(
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(10),
// //                   ),
// //                   child: Column(
// //                     children: [
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Text("Language",
// //                               style: TextStyle(
// //                                   fontSize: 17,
// //                                   fontWeight: FontWeight.w700,
// //                                   color: PURP)),
// //                           SizedBox(
// //                             height: 20,
// //                           ),
// //                         ],
// //                       ),
// //                       SizedBox(height: 20),
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                         children: [
// //                           Padding(
// //                             padding: const EdgeInsets.all(8.0),
// //                             child: Text("English",
// //                                 style: TextStyle(
// //                                     fontSize: 17,
// //                                     fontWeight: FontWeight.w700,
// //                                     color: BLACK)),
// //                           ),
// //                           SizedBox(
// //                             width: 20,
// //                           ),
// //                           Container(
// //                             margin: EdgeInsets.all(8),
// //                             width: 80,
// //                             height: 30,
// //                             decoration: BoxDecoration(
// //                                 color: BLUE,
// //                                 borderRadius: BorderRadius.circular(10)),
// //                             child: Center(
// //                               child: Text("Edit",
// //                                   style: TextStyle(
// //                                       fontSize: 17,
// //                                       fontWeight: FontWeight.w700,
// //                                       color: WHITE)),
// //                             ),
// //                           )
// //                         ],
// //                       ),
// //                       SizedBox(
// //                         height: 20,
// //                       ),
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                         children: [
// //                           Padding(
// //                             padding: const EdgeInsets.all(8.0),
// //                             child: Text("Dutch",
// //                                 style: TextStyle(
// //                                     fontSize: 17,
// //                                     fontWeight: FontWeight.w700,
// //                                     color: BLACK)),
// //                           ),
// //                           SizedBox(
// //                             width: 20,
// //                           ),
// //                           Container(
// //                             margin: EdgeInsets.all(8),
// //                             width: 80,
// //                             height: 30,
// //                             decoration: BoxDecoration(
// //                                 color: BLUE,
// //                                 borderRadius: BorderRadius.circular(10)),
// //                             child: Center(
// //                               child: Text("Edit",
// //                                   style: TextStyle(
// //                                       fontSize: 17,
// //                                       fontWeight: FontWeight.w700,
// //                                       color: WHITE)),
// //                             ),
// //                           )
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               )
// //             ],
// //           ));
// //     },
// //   );
// // }

// /*
// class SettingsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final languageProvider = Provider.of<LanguageProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Settings'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('Change the language:'),
//             Switch(
//               value: languageProvider.currentLocale.languageCode == 'en',
//               onChanged: (value) {
//                 languageProvider.toggleLanguage();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// */