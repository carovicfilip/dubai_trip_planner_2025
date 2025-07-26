import 'package:dubai_trip_planner_2025/features/categories/ui/categories_screen.dart';
import 'package:dubai_trip_planner_2025/features/explore/ui/explore_screen.dart';
import 'package:dubai_trip_planner_2025/features/my_trip/ui/my_trip_screen.dart';
import 'package:dubai_trip_planner_2025/features/profile/ui/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScaffold extends StatefulWidget {
  @override
  _MainScaffoldState createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentIndex = 0;
  final _screens = [
    ExploreScreen(),
    CategoryScreen(),
    MyTripScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black38,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: "Explore"),
          const BottomNavigationBarItem(icon: Icon(Icons.category), label: "Categories"),
           BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/my_trip.svg', height: 36,), label: "My Trip"),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
