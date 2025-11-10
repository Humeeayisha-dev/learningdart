// import 'package:flutter/material.dart';
// import 'package:learningdart/home_page.dart';

// class BottomNavigation extends StatefulWidget {
//   const BottomNavigation({super.key});

//   @override
//   State<BottomNavigation> createState() => _BottomNavigationState();
// }

// class _BottomNavigationState extends State<BottomNavigation> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: HomePage(),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(label: "Home", icon: Icon(Icons.star)),
//           BottomNavigationBarItem(label: "celebration", icon: Icon(Icons.cake)),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:learningdart/contact_page.dart';
import 'package:learningdart/home_page.dart';
import 'package:learningdart/profile_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int indexToBeShown = 0;

  var pages = [HomePage(), ContactPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexToBeShown],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexToBeShown,
        onTap: (value) {
          setState(() {});
          indexToBeShown = value;
        },
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "profile", icon: Icon(Icons.person)),
          BottomNavigationBarItem(
            label: "contact",
            icon: Icon(Icons.contact_page),
          ),
        ],
      ),
    );
  }
}
