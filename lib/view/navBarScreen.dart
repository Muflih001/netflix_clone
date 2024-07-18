import 'package:flutter/material.dart';
import 'package:netflix_clone/view/comingSoon_screen/comingsoonScreen.dart';
import 'package:netflix_clone/view/download_Screen/downloadScreen.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/more_screen/moreScreen.dart';
import 'package:netflix_clone/view/search_screen/searchScreen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  var selectedIndex = 0;
  List<Widget> myScreens = [
    HomeScreen(),
    SearchScreen(),
    Comingsoonscreen(),
    Downloadscreen(),
    MoreScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedItemColor: Colors.grey[700],
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: 'Coming Soon'),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_download_sharp), label: 'Download'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More')
          ]),
    );
  }
}
