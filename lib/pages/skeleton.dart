import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touchgrass/pages/counter_page.dart';
import 'package:touchgrass/pages/ramiz_page.dart';
import 'package:touchgrass/pages/will_page.dart';

import 'home_page.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  int _selectedPage = 0;

  final List<Widget> _pages = [
    const HomePage(), // Ensure this is defined or imported
    const CounterPage(), // Ensure this is defined or imported
    const WillPage(), // Add pages for other navigation items
    const RamizPage(), // Add corresponding pages for each item
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Skeleton App',
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: _pages[_selectedPage], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.countertops),
            label: 'Counter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessible_forward_rounded),
            label: 'Leaderboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Shop',
          ),
        ],
      ),
    );
  }
}
