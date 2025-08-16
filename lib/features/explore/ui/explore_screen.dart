import 'package:dubai_trip_planner_2025/core/widgets/hack_and_tips.dart';
import 'package:dubai_trip_planner_2025/core/widgets/weather_forecast_section.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/category_section.dart';
import '../../../core/widgets/header_widget.dart';
import '../../../core/widgets/most_popular_section.dart';
import '../../../core/widgets/must_see_section.dart';
import '../../../core/widgets/promo_banner.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ExploreScreen> with SingleTickerProviderStateMixin {
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
      // floatingActionButton: AnimatedBuilder(
      //   animation: _controller,
      //   builder: (context, child) {
      //     return Container(
      //       decoration: BoxDecoration(
      //         gradient: LinearGradient(
      //           colors: [
      //             _color1.value ?? Colors.cyan,
      //             _color2.value ?? Colors.purple,
      //           ],
      //         ),
      //         borderRadius: BorderRadius.circular(30),
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.black26,
      //             blurRadius: 6,
      //             offset: Offset(0, 2),
      //           ),
      //         ],
      //       ),
      //       child: FloatingActionButton.extended(
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (_) => const MyTripScreen()),
      //           );
      //         },
      //         backgroundColor: Colors.transparent,
      //         elevation: 0,
      //         label: const Text(
      //           "Plan My Trip",
      //         ),
      //         icon: const Icon(Icons.travel_explore),
      //       ),
      //     );
      //   },
      // ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: const [
            HeaderWidget(name: "Filip", savings: "AED 520"),
            SizedBox(height: 16),
            PromoBanner(),
            SizedBox(height: 24),
            CategorySection(),
            SizedBox(height: 36),
            MostPopularSection(),
            SizedBox(height: 30),
            MustSeeSection(),
            SizedBox(height: 30),
            WeatherForecastSection(),
            SizedBox(height: 30),
            HackAndTips(),
          ],
        ),
      ),
    );
  }
}
