// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class InstagramNavigationBar extends StatefulWidget {
  const InstagramNavigationBar({super.key});

  @override
  _InstagramNavigationBarState createState() => _InstagramNavigationBarState();
}

class _InstagramNavigationBarState extends State<InstagramNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // Replace these with your actual page widgets
    const Placeholder(color: Colors.blue),
    const Placeholder(color: Colors.red),
    const Placeholder(color: Colors.green),
    const Placeholder(color: Colors.yellow),
    const Placeholder(color: Colors.orange),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: InstagramNavigationBar(),
  ));
}
