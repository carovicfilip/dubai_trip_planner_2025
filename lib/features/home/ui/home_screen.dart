import 'package:dubai_trip_planner_2025/core/widgets/category_section.dart';
import 'package:dubai_trip_planner_2025/core/widgets/header_widget.dart';
import 'package:dubai_trip_planner_2025/core/widgets/most_popular_section.dart';
import 'package:dubai_trip_planner_2025/core/widgets/promo_banner.dart';
import 'package:dubai_trip_planner_2025/core/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  final String userName = "Filip";
  final String totalSavings = "AED 520";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          HeaderWidget(name: userName, savings: totalSavings),
          const SizedBox(height: 16),
          const SearchBarWidget(),
          const SizedBox(height: 16),
          const PromoBanner(),
          const SizedBox(height: 24),
          const CategorySection(),
          const SizedBox(height: 24),
          const MostPopularSection(),
        ],
      ),
    );
  }
}
