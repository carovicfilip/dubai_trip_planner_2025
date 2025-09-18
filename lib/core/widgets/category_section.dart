import 'package:dubai_trip_planner_2025/features/categories/ui/categories_screen.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  final List<String> labels = const [
    "Must-See",
    "Restaurants",
    "Nightlife",
    "Beaches & Pools",
    "Culture & Museums",
    "Shopping",
    "Desert Adventure",
    "Family Fun",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Categories", style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 14),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(labels.length, (index) {
              final label = labels[index];
              final iconPath = "assets/icons/icon${index + 1}.png";

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CategoryScreen(initialIndex: index), // 👈 prosleđuje index
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 38,
                        child: Image.asset(
                          iconPath,
                          width: 60,
                          height: 60,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(label, style: const TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
