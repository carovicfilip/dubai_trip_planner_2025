import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  final List<Map<String, String>> categories = const [
    {"emoji": "🍽️", "label": "Restaurants"},
    {"emoji": "📍", "label": "Attractions"},
    {"emoji": "☕", "label": "Cafes"},
    {"emoji": "🤑", "label": "Cheap eats"},
    {"emoji": "🍳", "label": "Breakfast and brunch"},
    {"emoji": "🥐", "label": "Bakeries"},
    {"emoji": "🍺", "label": "Breweries and beer"},
    {"emoji": "❤️", "label": "Romantic places"},
    {"emoji": "🍗", "label": "Family restaurants"},
    {"emoji": "🏛️", "label": "Museums"},
    {"emoji": "🍹", "label": "Bars"},
    {"emoji": "🛍️", "label": "Shopping"},
    {"emoji": "🎠", "label": "Kid-friendly attractions"},
    {"emoji": "🌃", "label": "Nightlife"},
    // {"emoji": "🏘️", "label": "Neighborhoods"},
    // {"emoji": "🌲", "label": "Nature"},
    // {"emoji": "🏛️", "label": "Architectural buildings"},
    {"emoji": "🖼️", "label": "Art museums"},
    {"emoji": "🪐", "label": "Science & space museums"},
    {"emoji": "🎢", "label": "Theme parks"},
    {"emoji": "💦", "label": "Waterfalls"},
    {"emoji": "🌭", "label": "Street food"},
    {"emoji": "🥗", "label": "Salad"},
    {"emoji": "🏛️", "label": "Free museums"},
    {"emoji": "🍣", "label": "Sushi"},
    // {"emoji": "🌯", "label": "Shawarma"},
    {"emoji": "🕰️", "label": "History museums"},
    {"emoji": "🍬", "label": "Sweets"},
    {"emoji": "🥳", "label": "Place to party"},
    // {"emoji": "🏨", "label": "Hotels"},
    // {"emoji": "🐔", "label": "Chicken"},
    // {"emoji": "🍔", "label": "American restaurants"},
    {"emoji": "🛍️", "label": "Boutiques"},
    // {"emoji": "🥡", "label": "Takeout and delivery"},
    // {"emoji": "🛏️", "label": "Bed and breakfast"},
    {"emoji": "🏬", "label": "Malls"},
    {"emoji": "🍜", "label": "Asian food"},
    {"emoji": "🍸", "label": "Lounges"},
    {"emoji": "🍟", "label": "Fast food"},
    // {"emoji": "🥘", "label": "Paella"},
    {"emoji": "🥦", "label": "Vegan restaurants"},
    {"emoji": "🥩", "label": "Steak"},
    // {"emoji": "🏨", "label": "Spa hotels"},
    {"emoji": "🥗", "label": "Vegetarian restaurants"},
    // {"emoji": "🍜", "label": "Ramen"},
    // {"emoji": "🥖", "label": "French bakeries"},
    // {"emoji": "🍳", "label": "Cooking classes"},
    // {"emoji": "🍞", "label": "Bread"},
    // {"emoji": "🧆", "label": "Falafel"},
    // {"emoji": "🥘", "label": "French restaurants"},
    // {"emoji": "🥞", "label": "Crepes"},
    {"emoji": "🍕", "label": "Pizzas"},
    {"emoji": "🎨", "label": "Art galleries"},
    {"emoji": "💃", "label": "Nightclubs"},
    // {"emoji": "🛍️", "label": "Markets"},
    // {"emoji": "☕", "label": "Coffee roasters"},
    // {"emoji": "🍝", "label": "Pasta"},
    {"emoji": "🍨", "label": "Gelato"},
    {"emoji": "💍", "label": "Places to propose"},
    {"emoji": "🎭", "label": "Arts and culture"},
    {"emoji": "🌳", "label": "Parks and gardens"},
    // {"emoji": "🧋", "label": "Bubble tea or boba"},
    {"emoji": "🏊", "label": "Pools"},
    {"emoji": "🍦", "label": "Ice cream"},
    // {"emoji": "⛪", "label": "Wedding venues"},
    // {"emoji": "🍝", "label": "Italian restaurants"},
    // {"emoji": "🎞️", "label": "Photography museums"},
    // {"emoji": "🤤", "label": "Buffets"},
    // {"emoji": "🌮", "label": "Tacos"},
    {"emoji": "🍱", "label": "Japanese restaurants"},
    {"emoji": "🏖️", "label": "Beaches"},
    {"emoji": "🎂", "label": "Cakes"},
    // {"emoji": "🍜", "label": "Noodles"},
    // {"emoji": "☕", "label": "High tea"},
    {"emoji": "🥡", "label": "Chinese restaurants"},
    {"emoji": "🐟", "label": "Fish and chips"},
    {"emoji": "🧁", "label": "Desserts"},
    {"emoji": "🚶", "label": "Walks"},
    // {"emoji": "🥟", "label": "Dumplings"},
    {"emoji": "🥞", "label": "Pancakes"},
    // {"emoji": "🥟", "label": "Dim sum"},
    // {"emoji": "🍰", "label": "Pastries"},
    // {"emoji": "🌆", "label": "Sights"},
    // {"emoji": "🍩", "label": "Donuts"},
    {"emoji": "🏡", "label": "Rooftops"},
    // {"emoji": "😋", "label": "Places to eat"},
    // {"emoji": "🥐", "label": "Croissant"},
    // {"emoji": "☕", "label": "Afternoon tea"},
    {"emoji": "🎿", "label": "Ski resorts"},
    {"emoji": "🎪", "label": "Fun things to do"},
    // {"emoji": "🍗", "label": "Fried chicken"},
    {"emoji": "💆‍️", "label": "Spas"},
    {"emoji": "😋", "label": "Casual restaurants"},
    // {"emoji": "🪔", "label": "Street markets"},
    // {"emoji": "🍜", "label": "Pho"},
    {"emoji": "🌃", "label": "Places to go out"},
    // {"emoji": "🫒", "label": "Tapas"},
    {"emoji": "💱", "label": "Place to exchange money"},
    // {"emoji": "🌉", "label": "Bridges"},
    // {"emoji": "🍲", "label": "Soup"},
    {"emoji": "🏢", "label": "Buildings"},
    // {"emoji": "🐔", "label": "Chicken wings"},
  ];

  @override
  Widget build(BuildContext context) {
    final half = (categories.length / 2).ceil();
    final firstRow = categories.sublist(0, half);
    final secondRow = categories.sublist(half);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Categories", style: Theme
            .of(context)
            .textTheme
            .titleMedium),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(firstRow.length, (index) {
              final topCat = firstRow[index];
              final bottomCat = index < secondRow.length ? secondRow[index] : null;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    // Gornji red
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 28,
                      child: Text(topCat['emoji']!, style: const TextStyle(fontSize: 24)),
                    ),
                    const SizedBox(height: 4),
                    Text(topCat['label']!, style: const TextStyle(fontSize: 12)),

                    const SizedBox(height: 12),

                    // Donji red (ako postoji)
                    if (bottomCat != null) ...[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 28,
                        child: Text(bottomCat['emoji']!, style: const TextStyle(fontSize: 24)),
                      ),
                      const SizedBox(height: 4),
                      Text(bottomCat['label']!, style: const TextStyle(fontSize: 12)),
                    ],
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
