import 'package:dubai_trip_planner_2025/core/widgets/nearby_places_section.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
   CategoryScreen({super.key});

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

   final List<List<Color>> categoryGradients = [
     // Must-See → vibrantna crveno-roze sa toplim prelazom
     [const Color(0xFFFF5F6D), const Color(0xFFFFC371)],

// Eat & Drink → topla mango-žuta sa zlatnim prelazom
     [const Color(0xFFFFB75E), const Color(0xFFED8F03)],


// Nightlife → tamnija indigo-plava sa ljubičastim prelazom
     [const Color(0xFF1A2980), const Color(0xFF26D0CE)],

     // Beaches & Pools → tirkizno-plava sa akva prelazom
     [const Color(0xFF00C9FF), const Color(0xFF92FE9D)],

     // Desert & Adventure → peščano-narandžasta
     [const Color(0xFFF7971E), const Color(0xFFFFD200)],

     // Shopping & Souks → luksuzna ljubičasta sa roze prelazom
     [const Color(0xFF8E2DE2), const Color(0xFFDA8BD8)],

     // Culture & Museums → bronzano-zlatna
     [const Color(0xFFD1913C), const Color(0xFFFFD194)],

     // Family Fun → sveža zelena sa sunčanim žutim tonom
     [const Color(0xFF56ab2f), const Color(0xFFA8E063)],
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
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: categoryGradients[index],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  categories[index],
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white, // dodaj kontrast
                  ),
                ),
              ),

              const NearbyPlacesSection(isCategoryScreen: true),
              const SizedBox(height: 30),
            ],
          );
        },
      ),
    );
  }
}
