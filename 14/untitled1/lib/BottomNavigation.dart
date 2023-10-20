import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:untitled1/Home/Category.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPage = 0;

  List<Widget> pages =  [
HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,

      body: pages[currentPage],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GNav(
          rippleColor: Colors.grey[300]!,
          activeColor:  Color(0xff1773ea),
          gap: 1,
          onTabChange: (index) => setState(() => currentPage = index),
          selectedIndex: currentPage,
          padding: const EdgeInsets.only(bottom: 19,left: 5,right: 5,top: 9),
          tabs: const [
            GButton(icon: Icons.home_filled,iconColor: Colors.grey,),
            GButton(icon: Icons.textsms_sharp,iconColor: Colors.grey,),
            GButton(icon: Icons.wine_bar_rounded,iconColor: Colors.grey,),
            GButton(icon: Icons.bookmark,iconColor: Colors.grey,),
            GButton(icon: Icons.person,iconColor: Colors.grey,),

          ],
        ),
      ),
    );
  }}
