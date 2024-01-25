import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'downloads.dart';
import 'search.dart';
import 'home.dart';



// ignore: must_be_immutable
class Start extends StatefulWidget {
 const Start({super.key,});
  
  @override
  State<Start> createState() => _StartState();
} 


class _StartState extends State<Start> {
  int currentIndexSelect = 0;
  late final List<Widget> pages;
  @override
  void initState() {
    super.initState();
    pages = [
      const Home(),
      const Find(),
     const Downloads(),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndexSelect],
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 33, 33, 33),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
          child: GNav(
              onTabChange: (newindex) {
                setState(() {
                  currentIndexSelect = newindex;
                });
              },
              backgroundColor: const Color.fromARGB(255, 33, 33, 33),
              
            color: const Color.fromARGB(255, 93, 91, 91),
              activeColor: Colors.white,
              tabBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
              padding: const EdgeInsets.all(10),
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: ' Home',
                ),
                GButton(
                  icon: Icons.search,
                  text: ' Find',
                ),
                GButton(
                  icon: Icons.download,
                  text: ' Downloads',
                ),
              ]),
        ),
      ),
    );
  }
}
