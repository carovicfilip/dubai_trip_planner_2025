import 'package:dubai_trip_planner_2025/core/widgets/must_see_section.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  final int? initialIndex; // 👈 index koji stiže iz CategorySection

  const CategoryScreen({super.key, this.initialIndex});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final ScrollController _scrollController = ScrollController();

  final List<String> categories = const [
    'Must-See',
    'Restaurants',
    'Nightlife',
    'Beaches & Pools',
    'Desert Adventure',
    'Shopping',
    'Culture & Museums',
    'Family Fun',
  ];

  final List<String> categoryIcons = const [
    'assets/icons/icon1.png',
    'assets/icons/icon2.png',
    'assets/icons/icon3.png',
    'assets/icons/icon4.png',
    'assets/icons/icon5.png',
    'assets/icons/icon6.png',
    'assets/icons/icon7.png',
    'assets/icons/icon8.png',
  ];

  @override
  void initState() {
    super.initState();

    // ⬇️ kad se ekran otvori, skroluj na prosleđeni index
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.initialIndex != null) {
        final itemHeight = 120.0; // približna visina jedne kartice + spacing
        _scrollController.jumpTo(widget.initialIndex! * itemHeight);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore Categories',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF101A26),
        shadowColor: Colors.black26,
      ),
      body: ListView.builder(
        controller: _scrollController, // 👈 kontrola skrolovanja
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
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      categoryIcons[index],
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      categories[index],
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xFF101A26),
                      ),
                    ),
                  ],
                ),
              ),
              const MustSeeSection(isCategoryScreen: true),
              const SizedBox(height: 30),
            ],
          );
        },
      ),
    );
  }
}
