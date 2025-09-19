class Category {
  final String id;
  final String name;
  final String iconPath;
  final int order;

  const Category({
    required this.id,
    required this.name,
    required this.iconPath,
    required this.order,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Category && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'Category(id: $id, name: $name)';
}

class CategoryRepository {
  static const List<Category> _categories = [
    Category(
      id: 'must_see',
      name: 'Must-See',
      iconPath: 'assets/icons/icon1.png',
      order: 0,
    ),
    Category(
      id: 'restaurants',
      name: 'Restaurants',
      iconPath: 'assets/icons/icon2.png',
      order: 1,
    ),
    Category(
      id: 'nightlife',
      name: 'Nightlife',
      iconPath: 'assets/icons/icon3.png',
      order: 2,
    ),
    Category(
      id: 'beaches_pools',
      name: 'Beaches & Pools',
      iconPath: 'assets/icons/icon4.png',
      order: 3,
    ),
    Category(
      id: 'culture_museums',
      name: 'Culture & Museums',
      iconPath: 'assets/icons/icon5.png',
      order: 4,
    ),
    Category(
      id: 'shopping',
      name: 'Shopping',
      iconPath: 'assets/icons/icon6.png',
      order: 5,
    ),
    Category(
      id: 'desert_adventure',
      name: 'Desert Adventure',
      iconPath: 'assets/icons/icon7.png',
      order: 6,
    ),
    Category(
      id: 'family_fun',
      name: 'Family Fun',
      iconPath: 'assets/icons/icon8.png',
      order: 7,
    ),
  ];

  static List<Category> get allCategories => List.unmodifiable(_categories);

  static Category? getCategoryById(String id) {
    try {
      return _categories.firstWhere((category) => category.id == id);
    } catch (e) {
      return null;
    }
  }

  static Category? getCategoryByOrder(int order) {
    try {
      return _categories.firstWhere((category) => category.order == order);
    } catch (e) {
      return null;
    }
  }

  static int getCategoryIndex(Category category) {
    return _categories.indexOf(category);
  }
}
