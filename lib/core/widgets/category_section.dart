import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  final List<Map<String, String>> categories = const [
    {"emoji": "🥐", "label": "Brunch"},
    {"emoji": "🔍", "label": "Breakfast"},
    {"emoji": "💃", "label": "Ladies Night"},
    {"emoji": "🍹", "label": "Happy Hour"},
    {"emoji": "🏖️", "label": "Pool Day"},
    {"emoji": "🎯", "label": "Leisure"},
    {"emoji": "💪", "label": "Fitness"},
    {"emoji": "💇", "label": "Hair Salon"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Categories", style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categories.map((cat) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 28,
                    child: Text(cat['emoji']!, style: TextStyle(fontSize: 24)),
                  ),
                  const SizedBox(height: 4),
                  Text(cat['label']!, style: TextStyle(fontSize: 12)),
                ],
              ),
            )).toList(),
          ),
        ),
      ],
    );
  }
}
