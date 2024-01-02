// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MainScreen(),
//     ),
//   );
// }
//
// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           child: Row(
//             children: [
//               Expanded(
//                 flex: 8,
//                 child: SingleChildScrollView(
//                   child: Container(
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 2,
//                 child: Drawer(
//                   child: Column(
//                     children: [
//                       AspectRatio(
//                         aspectRatio: 1.23,
//                         child: Container(
//                           color: Colors.black12,
//                           child: const Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               Spacer(
//                                 flex: 2,
//                               ),
//                               CircleAvatar(
//                                 radius: 50,
//                                 backgroundImage:
//                                 AssetImage("assets/photo.jpg"),
//                               ),
//                               Spacer(),
//                               Text("Tiwari Manishakumari Sandeep"),
//                               Spacer(
//                                 flex: 2,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
