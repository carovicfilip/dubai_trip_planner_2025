import 'package:dubai_trip_planner_2025/core/models/category.dart';
import 'package:dubai_trip_planner_2025/core/widgets/must_see_section.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CategoryScreen extends StatefulWidget {
  final Category? selectedCategory;

  const CategoryScreen({super.key, this.selectedCategory});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener = ItemPositionsListener.create();

  late final List<Category> categories;

  @override
  void initState() {
    super.initState();
    categories = CategoryRepository.allCategories;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final sel = widget.selectedCategory;
      if (sel == null) return;

      final selectedIndex = CategoryRepository.getCategoryIndex(sel);
      if (selectedIndex == -1) return;
      if (!_itemScrollController.isAttached) return;

      // 👉 Za prve dve kategorije (index 0 i 1) – ne skroluj / ne centriraj
      if (selectedIndex < 2) return;

      // 👉 Za ostale – centriraj
      _itemScrollController.scrollTo(
        index: selectedIndex,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
        alignment: 0.5, // centar ekrana
      );
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
      body: ScrollablePositionedList.builder(
        itemScrollController: _itemScrollController,
        itemPositionsListener: _itemPositionsListener,
        padding: const EdgeInsets.all(10),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header reda sa ikonom i imenom kategorije
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      category.iconPath,
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      category.name,
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
