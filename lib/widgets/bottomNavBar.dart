// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_proj/views/HomePage.dart';
// import 'package:flutter_proj/views/testpage.dart';

// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }

// var current = 0;
// List<Widget> _screens = [MyHomePage(), Test()];

// class _BottomNavBarState extends State<BottomNavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return CurvedNavigationBar(
//       height: 60,
//       buttonBackgroundColor: Colors.white,
//       backgroundColor: Color(0xffD05028),
//       onTap: (value) {
//         return _screens[value];
//       },
//       items: <Widget>[
//         Icon(
//           Icons.home,
//           size: 30,
//         ),
//         Icon(
//           Icons.apartment,
//           size: 30,
//         ),
//         Icon(
//           Icons.info_outline,
//           size: 30,
//         ),
//         Icon(
//           Icons.people,
//           size: 30,
//         ),
//         Icon(
//           Icons.chat,
//           size: 30,
//         ),
//       ],
//       //       label: "الشركات التابعة",
//       // selectedItemColor: Colors.white,
//       // selectedFontSize: 17,
//       // backgroundColor:
//       // type: BottomNavigationBarType.fixed,
//       // onTap: (value) {
//       //   setState(() {
//       //     current = value;
//       //   });
//       // },
//       // currentIndex: current,
//       // items: [
//       //   BottomNavigationBarItem(
//       //       backgroundColor: Colors.white,
//       //       label: "الشركات التابعة",
//       //       icon: Icon(Icons.policy)),
//       //   BottomNavigationBarItem(
//       //       label: " شركاء النجاح", icon: Icon(Icons.people)),
//       //   BottomNavigationBarItem(
//       //     icon: Icon(Icons.info_outline),
//       //     label: "عن الشركه",
//       //   ),
//       //   BottomNavigationBarItem(
//       //     icon: Icon(Icons.chat),
//       //     label: "تواصل معنا ",
//       //   ),
//       // ],
//     );
//   }
// }
