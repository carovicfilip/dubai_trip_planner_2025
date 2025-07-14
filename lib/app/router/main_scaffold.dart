import 'package:dubai_trip_planner_2025/features/favorites/ui/favorites_screen.dart';
import 'package:dubai_trip_planner_2025/features/home/ui/home_screen.dart';
import 'package:dubai_trip_planner_2025/features/profile/ui/profile_screen.dart';
import 'package:flutter/material.dart';


class MainScaffold extends StatefulWidget {
  @override
  _MainScaffoldState createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentIndex = 0;
  final _screens = [HomeScreen(), FavoritesScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
