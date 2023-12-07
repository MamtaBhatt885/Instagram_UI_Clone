import 'package:flutter/material.dart';
import 'package:insta_clone/pages/account.dart';
import 'package:insta_clone/pages/add.dart';
import 'package:insta_clone/pages/home.dart';
import 'package:insta_clone/pages/reels.dart';
import 'package:insta_clone/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//navigate around the bottom navbar
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //different pages to navigate to
  final List<Widget> _children = [
   UserHome(), 
   UserSearch(),
   UserAdd(),
   UserReels(),
   UserAccount(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo_outlined), label: 'add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'reels'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
          ]),
    );
  }
}
