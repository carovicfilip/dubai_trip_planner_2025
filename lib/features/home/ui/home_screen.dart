import 'package:flutter/material.dart';
import 'package:dubai_trip_planner_2025/features/my_trip/ui/my_trip_screen.dart';
import '../../../core/widgets/category_section.dart';
import '../../../core/widgets/header_widget.dart';
import '../../../core/widgets/most_popular_section.dart';
import '../../../core/widgets/near_you_section.dart';
import '../../../core/widgets/promo_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _color1;
  late Animation<Color?> _color2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _color1 = ColorTween(
      begin: const Color(0xFFB2FEFA),
      end: const Color(0xFF00C9FF),
    ).animate(_controller);

    _color2 = ColorTween(
      begin: const Color(0xFF0ED2F7),
      end: const Color(0xFFA100FF),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  _color1.value ?? Colors.cyan,
                  _color2.value ?? Colors.purple,
                ],
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const MyTripScreen()),
                );
              },
              backgroundColor: Colors.transparent,
              elevation: 0,
              label: const Text("Plan My Trip",),
              icon: const Icon(Icons.travel_explore),
            ),
          );
        },
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            HeaderWidget(name: "Filip", savings: "AED 520"),
            const SizedBox(height: 16),
            const PromoBanner(),
            const SizedBox(height: 24),
            const CategorySection(),
            const SizedBox(height: 24),
            const MostPopularSection(),
            const SizedBox(height: 24),
            const NearYouSection(),
          ],
        ),
      ),
    );
  }
}
