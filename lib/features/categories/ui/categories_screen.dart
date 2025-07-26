import 'package:dubai_trip_planner_2025/core/widgets/nearby_places_section.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  final List<String> categories = const [
    'Must-See',
    'Eat & Drink',
    'Nightlife',
    'Beaches & Pools',
    'Desert & Adventure',
    'Shopping & Souks',
    'Culture & Museums',
    'Family Fun',
  ];

  final List<Color> categoryColors = const [
    Color(0xFFFFD6D6), // Must-See → svetlo crvena/roze (uzbuđenje, atrakcije)
    Color(0xFFFFF2B2), // Eat & Drink → svetlo žuta (hrana, uživanje)
    Color(0xFFB6D4FF), // Nightlife → plavkasta (noć, svetla grada)
    Color(0xFFB2FFF2), // Beaches & Pools → tirkizna (voda, opuštanje)
    Color(0xFFFFE0B2), // Desert & Adventure → peščano narandžasta (pustinja, sunce)
    Color(0xFFE2C2FF), // Shopping & Souks → ljubičasta (luksuz, šarenilo)
    Color(0xFFFFD7A9), // Culture & Museums → narandžasto-bež (topla, klasična)
    Color(0xFFC8F7C5), // Family Fun → svetlo zelena (igra, priroda, svežina)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Categories'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 24),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: categoryColors[index % categoryColors.length],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categories[index],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const NearbyPlacesSection(isCategoryScreen: true),
              ],
            ),
          );
        },
      ),
    );
  }
}
