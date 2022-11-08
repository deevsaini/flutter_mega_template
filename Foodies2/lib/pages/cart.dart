/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
// import 'dart:developer';
// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:timelines/timelines.dart';
// import '../components/styles.dart' as style;

// // import '../nav.dart';

// const kTileHeight = 50.0;

// const completeColor = style.appColor;
// const inProgressColor = style.appColor;
// const todoColor = Color(0xffd1d2d7);

// class ProcessTimelinePage extends StatefulWidget {
//   static const String id = 'ProcessTimelinePage';
//   @override
//   _ProcessTimelinePageState createState() => _ProcessTimelinePageState();
// }

// class _ProcessTimelinePageState extends State<ProcessTimelinePage> {
//   int _processIndex = 1;

//   Color getColor(int index) {
//     if (index == _processIndex) {
//       return inProgressColor;
//     } else if (index < _processIndex) {
//       return completeColor;
//     } else {
//       return todoColor;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       // appBar: TitleAppBar('Process Timeline'),
//       body: Timeline.tileBuilder(
//         theme: TimelineThemeData(
//           direction: Axis.horizontal,
//         ),
//         builder: TimelineTileBuilder.connected(
//           connectionDirection: ConnectionDirection.before,
//           itemExtentBuilder: (_, __) =>
//               MediaQuery.of(context).size.width / _processes.length,
//           contentsBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(top: 0.0),
//               child: Text(
//                 _processes[index],
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: getColor(index),
//                 ),
//               ),
//             );
//           },
//           indicatorBuilder: (_, index) {
//             var color;
//             var child;
//             if (index == _processIndex) {
//               color = inProgressColor;
//               child = Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: CircularProgressIndicator(
//                   strokeWidth: 3.0,
//                   valueColor: AlwaysStoppedAnimation(Colors.white),
//                 ),
//               );
//             } else if (index < _processIndex) {
//               color = completeColor;
//             } else {
//               color = todoColor;
//             }

//             if (index <= _processIndex) {
//               return Stack(
//                 children: [
//                   Image.asset(
//                     'assets/images/process/g${index + 1}.png',
//                     width: 35.0,
//                     color: getColor(index),
//                   )
//                 ],
//               );
//             } else {
//               return Image.asset(
//                 'assets/images/process/g${index + 1}.png',
//                 width: 35.0,
//                 color: getColor(index),
//               );
//             }
//           },
//           connectorBuilder: (_, index, type) {
//             if (index > 0) {
//               if (index == _processIndex) {
//                 return DecoratedLineConnector(
//                   decoration: BoxDecoration(
//                     color: Colors.red,
//                   ),
//                 );
//               } else {
//                 return SolidLineConnector(
//                   color: getColor(index),
//                 );
//               }
//             } else {
//               return null;
//             }
//           },
//           itemCount: _processes.length,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(
//           Icons.chevron_right,
//         ),
//         onPressed: () {
//           setState(() {
//             _processIndex = (_processIndex + 1) % _processes.length;
//           });
//         },
//         backgroundColor: inProgressColor,
//       ),
//     );
//   }
// }

// final _processes = [
//   'New',
//   'Preparing',
//   'On the way',
//   'Delivered',
// ];
